import pytest
from PIL import Image, ImageDraw
import os
from datetime import datetime
from src.core.screen_checker import ScreenChecker
from scripts.screen_monitor import ScreenMonitor
from typing import Dict, Tuple, List
import sys
import json
import time

class TestScreenMonitor:
    @pytest.fixture
    def screenshot_path(self):
        return os.path.join('tests', 'fixtures', 'screenshot4k.jpg')

    @pytest.fixture
    def layout_path(self):
        return 'scripts/layout.json'
        
    @pytest.fixture
    def profile_path(self):
        return 'scripts/profiles/rogue.json'

    def find_red_boxes(self, image: Image.Image) -> List[Tuple[int, int]]:
        """Scan the image for red boxes and return their coordinates"""
        red_positions = []
        width, height = image.size
        
        # Convert image to RGB if it isn't already
        if image.mode != 'RGB':
            image = image.convert('RGB')
        
        # Define what we consider "red" (RGB values)
        def is_red(pixel):
            r, g, b = pixel
            # Red should be high, green and blue should be low
            return r > 200 and g < 50 and b < 50

        # Scan the image
        for y in range(height):
            for x in range(width):
                pixel = image.getpixel((x, y))
                if is_red(pixel):
                    red_positions.append((x, y))
        
        return red_positions

    def test_condition_detection(self, screenshot_path, layout_path):
        # Create output directory if it doesn't exist
        output_dir = os.path.join('tests', 'outputs')
        os.makedirs(output_dir, exist_ok=True)
        
        # Clear existing files from outputs directory
        for file in os.listdir(output_dir):
            file_path = os.path.join(output_dir, file)
            try:
                if os.path.isfile(file_path):
                    os.unlink(file_path)
            except Exception as e:
                print(f"Error deleting {file_path}: {e}")
        
        # Verify files exist before starting test
        assert os.path.exists(screenshot_path), f"Screenshot not found at {screenshot_path}"
        assert os.path.exists(layout_path), f"Layout file not found at {layout_path}"
        
        # Load the test image
        test_image = Image.open(screenshot_path)
        
        # Initialize the checker
        checker = ScreenChecker(layout_path)
        
        # Mock the pyautogui.pixel function to return colors from our test image
        def mock_pixel(x, y):
            # Ensure coordinates are within bounds
            x = min(max(0, int(x)), test_image.width - 1)
            y = min(max(0, int(y)), test_image.height - 1)
            return test_image.getpixel((x, y))
            
        # Replace the real pixel getter with our mock
        checker._get_pixel = mock_pixel
        
        # Find all red boxes in the image
        red_positions = self.find_red_boxes(test_image)
        
        print("\n=== Layout Analysis ===")
        print(f"Total layout IDs loaded: {len(checker.conditions)}")
        print("\nFirst 5 layout IDs with their offsets:")
        for i, (id, condition) in enumerate(list(checker.conditions.items())[:5]):
            print(f"  {id}:")
            print(f"    Position: ({condition.x}, {condition.y})")
        
        print("\n=== Image Analysis ===")
        print(f"Image size: {test_image.size}")
        print(f"Found {len(red_positions)} red pixels")
        if red_positions:
            print("\nRed pixel positions (first 10):")
            for x, y in red_positions[:10]:
                print(f"  ({x}, {y})")
        
        # Create output directory if it doesn't exist
        output_dir = os.path.join('tests', 'outputs')
        os.makedirs(output_dir, exist_ok=True)
        
        # Save the region of interest from the full screenshot
        def save_search_region(image: Image.Image):
            """Save the region of the screenshot where we're looking for conditions"""
            # Calsculate the region bounds (around the center of screen)
            center_x = image.width // 2
            center_y = image.height // 2
            
            # Create a region that's 800x400 pixels centered on our search area
            region_width = 800
            region_height = 400
            left = max(0, center_x - region_width//2)
            top = max(0, center_y - region_height//2)
            right = min(image.width, left + region_width)
            bottom = min(image.height, top + region_height)
            
            # Crop and save the region
            region = image.crop((left, top, right, bottom))
            
            # Draw a grid and markers for better reference
            draw = ImageDraw.Draw(region)
            
            # Draw vertical center line
            center_x_local = region_width//2
            draw.line((center_x_local, 0, center_x_local, region_height), fill='yellow', width=1)
            
            # Draw horizontal center line
            center_y_local = region_height//2
            draw.line((0, center_y_local, region_width, center_y_local), fill='yellow', width=1)
            
            # Save the region
            region.save(os.path.join(output_dir, "search_region.png"))
            print(f"Saved search region image", file=sys.stderr)
            
            return left, top
        
        def save_region(image: Image.Image, x: int, y: int, condition_id: str, found: bool):
            """Save a region around the specified coordinates using same style as search region"""
            # Use same dimensions as search region
            region_width = 800
            region_height = 400
            
            # Calculate region bounds centered on the check point
            left = max(0, x - region_width//2)
            top = max(0, y - region_height//2)
            right = min(image.width, left + region_width)
            bottom = min(image.height, top + region_height)
            
            # Crop the region
            region = image.crop((left, top, right, bottom))
            
            # Draw grid and markers
            draw = ImageDraw.Draw(region)
            
            # Calculate center point (relative to cropped region)
            center_x = x - left
            center_y = y - top
            
            # Draw vertical center line
            draw.line((center_x, 0, center_x, region_height), fill='yellow', width=1)
            
            # Draw horizontal center line
            draw.line((0, center_y, region_width, center_y), fill='yellow', width=1)
            
            # Save the image
            status = "found" if found else "not_found"
            region.save(os.path.join(output_dir, f"{condition_id}_{status}.png"))
            print(f"Saved region for {condition_id}", file=sys.stderr)
        
        # Save the search region first
        region_offset_x, region_offset_y = save_search_region(test_image)
        
        # Track detected and not detected conditions
        detected = []
        not_detected = []
        colors: Dict[str, Tuple[int, ...]] = {}
        
        print("\n=== Condition Checks ===", file=sys.stderr)
        print("Screen center:", checker.screen_width // 2, checker.screen_height // 2, file=sys.stderr)
        print("Scale factors (x, y):", checker.scale_factor_x, checker.scale_factor_y, file=sys.stderr)
        print(f"Search region offset: ({region_offset_x}, {region_offset_y})", file=sys.stderr)
        
        # Check each condition and save regions
        for condition_id, condition in checker.conditions.items():
            color = mock_pixel(condition.x, condition.y)
            colors[condition_id] = color
            
            matches = checker._colors_match(color, condition.color)
            if matches:
                detected.append(condition_id)
            else:
                not_detected.append(condition_id)
            
            # Save the region around this point
            save_region(test_image, condition.x, condition.y, condition_id, matches)
        
        # Print results in a clear format
        print("\n=== Test Results ===")
        print(f"\nDetected Layout IDs ({len(detected)}):")
        for condition_id in sorted(detected):
            condition = checker.conditions[condition_id]
            print(f"  ✓ {condition_id:<30} at ({condition.x}, {condition.y})")
            print(f"    Color found: {colors[condition_id]}")
        
        print(f"\nNot Detected Layout IDs ({len(not_detected)}):")
        for condition_id in sorted(not_detected[:5]):  # Only show first 5 undetected
            condition = checker.conditions[condition_id]
            print(f"  ✗ {condition_id:<30} at ({condition.x}, {condition.y})")
            print(f"    Color found: {colors[condition_id]}")
        if len(not_detected) > 5:
            print(f"    ... and {len(not_detected) - 5} more")
        
        # Assert that we detected at least one condition
        assert len(detected) > 0, "No conditions were detected in the screenshot"

    def test_trigger_state_behavior(self, screenshot_path, layout_path, profile_path):
        """Test that actions only occur when trigger is held"""
        # Setup
        checker = ScreenChecker(layout_path)
        
        # Create a test profile with a condition we know exists
        test_profile = {
            "name": "Test Profile",
            "check_interval": 0.1,
            "actions": [
                {
                    "key": "3",
                    "conditions": ["power_40"]
                }
            ]
        }
        
        # Write test profile to a temporary file
        test_profile_path = "tests/fixtures/test_profile.json"
        os.makedirs(os.path.dirname(test_profile_path), exist_ok=True)
        with open(test_profile_path, "w") as f:
            json.dump(test_profile, f)
        
        try:
            monitor = ScreenMonitor(checker, test_profile_path, debug=True)
            
            # Mock the pixel reading to use our test screenshot
            test_image = Image.open(screenshot_path)
            def mock_pixel(x, y):
                # Always return red to trigger our condition
                return (255, 0, 0)
            checker._get_pixel = mock_pixel
            
            # Track executed actions
            executed_actions = []
            def mock_execute_action(action):
                executed_actions.append(action)
            monitor.execute_action = mock_execute_action
            
            # Test: No actions when trigger not held
            monitor.trigger_held = False
            active_conditions = checker.check_conditions()
            action = monitor.get_next_action(active_conditions)
            if action:
                monitor.execute_action(action)
            assert len(executed_actions) == 0, "Actions executed while trigger not held"
            
            # Test: Actions occur when trigger held
            monitor.trigger_held = True
            active_conditions = checker.check_conditions()
            action = monitor.get_next_action(active_conditions)
            if action:
                monitor.execute_action(action)
            assert len(executed_actions) > 0, "No actions executed while trigger held"
            
            # Test: Actions stop when trigger released
            executed_actions.clear()
            monitor.trigger_held = False
            active_conditions = checker.check_conditions()
            action = monitor.get_next_action(active_conditions)
            if action:
                monitor.execute_action(action)
            assert len(executed_actions) == 0, "Actions executed after trigger released"
        
        finally:
            # Clean up
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)

    def test_condition_state_consistency(self, screenshot_path, layout_path):
        """Test that conditions remain consistent until pixel colors change"""
        # Setup
        checker = ScreenChecker(layout_path)
        
        # Mock the pixel reading to use our test screenshot
        test_image = Image.open(screenshot_path)
        def mock_pixel(x, y):
            x = min(max(0, int(x)), test_image.width - 1)
            y = min(max(0, int(y)), test_image.height - 1)
            return test_image.getpixel((x, y))
        checker._get_pixel = mock_pixel
        
        # Get initial conditions
        initial_conditions = checker.check_conditions()
        
        # Check multiple times - should remain consistent
        for _ in range(5):
            current_conditions = checker.check_conditions()
            assert current_conditions == initial_conditions, "Conditions changed without pixel color changes"
        
        # Modify one pixel color and verify change is detected
        original_get_pixel = checker._get_pixel
        modified_condition = next(iter(initial_conditions)) if initial_conditions else None
        if modified_condition:
            condition = checker.conditions[modified_condition]
            def modified_pixel(x, y):
                if x == condition.x and y == condition.y:
                    return (0, 0, 0)  # Different color
                return original_get_pixel(x, y)
            checker._get_pixel = modified_pixel
            
            new_conditions = checker.check_conditions()
            assert new_conditions != initial_conditions, "Condition state didn't change when pixel color changed"

    def test_multiple_conditions(self, layout_path):
        """Test that actions properly handle multiple required conditions"""
        checker = ScreenChecker(layout_path)
        
        # Create test profile with multiple conditions
        test_profile = {
            "name": "Multiple Conditions Test",
            "check_interval": 0.1,
            "actions": [
                {
                    "key": "1",
                    "conditions": ["power_40", "combat", "enemy_in_melee_range"]
                }
            ]
        }
        
        test_profile_path = "tests/fixtures/conditions_test.json"
        os.makedirs(os.path.dirname(test_profile_path), exist_ok=True)
        with open(test_profile_path, "w") as f:
            json.dump(test_profile, f)
            
        try:
            monitor = ScreenMonitor(checker, test_profile_path, debug=True)
            monitor.trigger_held = True
            
            # Mock pixel reading to always return red
            def mock_pixel(x, y):
                return (255, 0, 0)
            checker._get_pixel = mock_pixel
            
            # Track executed actions
            executed_actions = []
            def mock_execute_action(action):
                executed_actions.append(action)
            monitor.execute_action = mock_execute_action
            
            # Test: Primary condition only
            active_conditions = ["power_40"]
            action = monitor.get_next_action(active_conditions)
            assert action is None, "Action executed with only primary condition"
            
            # Test: One additional condition
            active_conditions = ["power_40", "combat"]
            action = monitor.get_next_action(active_conditions)
            assert action is None, "Action executed with missing conditions"
            
            # Test: All conditions met
            active_conditions = ["power_40", "combat", "enemy_in_melee_range"]
            action = monitor.get_next_action(active_conditions)
            assert action is not None, "Action not executed with all conditions met"
            
            # Test: Conditions in different order
            active_conditions = ["enemy_in_melee_range", "power_40", "combat"]
            action = monitor.get_next_action(active_conditions)
            assert action is not None, "Action not executed with conditions in different order"
            
        finally:
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)
    
    def test_profile_validation(self, layout_path):
        """Test that invalid profiles are handled properly"""
        checker = ScreenChecker(layout_path)
        
        # Test: Missing required fields
        invalid_profile = {
            "name": "Invalid Profile"
            # Missing actions
        }
        
        test_profile_path = "tests/fixtures/invalid_profile.json"
        os.makedirs(os.path.dirname(test_profile_path), exist_ok=True)
        with open(test_profile_path, "w") as f:
            json.dump(invalid_profile, f)
            
        try:
            with pytest.raises(KeyError):
                monitor = ScreenMonitor(checker, test_profile_path, debug=True)
        finally:
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)
        
        # Test: Invalid action format
        invalid_action_profile = {
            "name": "Invalid Action Profile",
            "check_interval": 0.1,
            "actions": [
                {
                    # Missing required 'key' field
                    "conditions": ["power_40"]
                }
            ]
        }
        
        test_profile_path = "tests/fixtures/invalid_action_profile.json"
        with open(test_profile_path, "w") as f:
            json.dump(invalid_action_profile, f)
            
        try:
            with pytest.raises(KeyError):
                monitor = ScreenMonitor(checker, test_profile_path, debug=True)
        finally:
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)

if __name__ == "__main__":
    pytest.main([__file__, "-s"])