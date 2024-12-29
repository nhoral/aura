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
        # Verify files exist before starting test
        assert os.path.exists(screenshot_path), f"Screenshot not found at {screenshot_path}"
        assert os.path.exists(layout_path), f"Layout file not found at {layout_path}"
        
        # Load the test image
        test_image = Image.open(screenshot_path)
        
        # Initialize the checker with test image
        checker = ScreenChecker(layout_path, test_image=test_image)
        
        # Track detected and not detected conditions
        detected = []
        not_detected = []
        colors: Dict[str, Tuple[int, ...]] = {}
        
        # Check each condition
        for condition_id, condition in checker.conditions.items():
            color = test_image.getpixel((condition.x, condition.y))
            colors[condition_id] = color
            
            matches = checker._colors_match(color, condition.color)
            if matches:
                detected.append(condition_id)
            else:
                not_detected.append(condition_id)
        
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
        test_image = Image.open(screenshot_path)
        checker = ScreenChecker(layout_path, test_image=test_image)
        
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
            
            # Track executed actions
            executed_actions = []
            def mock_execute_action(action):
                executed_actions.append(action)
            monitor.execute_action = mock_execute_action
            
            # Test: No actions when monitoring inactive
            monitor.monitoring_active = False
            active_conditions = checker.check_conditions()
            action = monitor.get_next_action(active_conditions)
            if action:
                monitor.execute_action(action)
            assert len(executed_actions) == 0, "Actions executed while monitoring inactive"
            
            # Test: Actions occur when monitoring active
            monitor.monitoring_active = True
            active_conditions = checker.check_conditions()
            action = monitor.get_next_action(active_conditions)
            if action:
                monitor.execute_action(action)
            assert len(executed_actions) > 0, "No actions executed while monitoring active"
        
        finally:
            # Clean up
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)

    def test_condition_state_consistency(self, screenshot_path, layout_path):
        """Test that conditions remain consistent until pixel colors change"""
        # Setup
        test_image = Image.open(screenshot_path)
        checker = ScreenChecker(layout_path, test_image=test_image)
        
        # Get initial conditions
        initial_conditions = checker.check_conditions()
        
        # Check multiple times - should remain consistent
        for _ in range(5):
            current_conditions = checker.check_conditions()
            assert current_conditions == initial_conditions, "Conditions changed without pixel color changes"
        
        # Create modified image with one pixel changed
        modified_image = test_image.copy()
        modified_condition = next(iter(initial_conditions)) if initial_conditions else None
        if modified_condition:
            condition = checker.conditions[modified_condition]
            modified_image.putpixel((condition.x, condition.y), (0, 0, 0))  # Change to black
            
            # Create new checker with modified image
            modified_checker = ScreenChecker(layout_path, test_image=modified_image)
            new_conditions = modified_checker.check_conditions()
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
            monitor.monitoring_active = True
            
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
            
        finally:
            # Clean up
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

    def test_negated_conditions(self, layout_path):
        """Test that negated conditions (prefixed with !) work correctly"""
        checker = ScreenChecker(layout_path)
        
        # Create test profile with negated conditions
        test_profile = {
            "name": "Negated Conditions Test",
            "check_interval": 0.1,
            "actions": [
                {
                    "key": "1",
                    "conditions": ["power_40", "!enemy_in_melee_range"]  # Press 1 when power > 40 and NOT in melee range
                }
            ]
        }
        
        test_profile_path = "tests/fixtures/negated_conditions_test.json"
        os.makedirs(os.path.dirname(test_profile_path), exist_ok=True)
        with open(test_profile_path, "w") as f:
            json.dump(test_profile, f)
            
        try:
            monitor = ScreenMonitor(checker, test_profile_path, debug=True)
            monitor.monitoring_active = True
            
            # Track executed actions
            executed_actions = []
            def mock_execute_action(action):
                executed_actions.append(action)
            monitor.execute_action = mock_execute_action
            
            # Test: Condition met but negated condition also met (should not execute)
            active_conditions = ["power_40", "enemy_in_melee_range"]
            action = monitor.get_next_action(active_conditions)
            assert action is None, "Action executed when negated condition was met"
            
            # Test: Condition met and negated condition not met (should execute)
            active_conditions = ["power_40"]  # enemy_in_melee_range is not in the list
            action = monitor.get_next_action(active_conditions)
            assert action is not None, "Action not executed when conditions were correct"
            
            # Test: Neither condition met
            active_conditions = ["combat"]
            action = monitor.get_next_action(active_conditions)
            assert action is None, "Action executed when required condition was not met"
            
        finally:
            # Clean up
            if os.path.exists(test_profile_path):
                os.remove(test_profile_path)

if __name__ == "__main__":
    pytest.main([__file__, "-s"])