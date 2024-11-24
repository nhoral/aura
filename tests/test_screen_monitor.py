import pytest
from PIL import Image
import os
from src.core.screen_checker import ScreenChecker
from typing import Dict, Tuple, List

class TestScreenMonitor:
    @pytest.fixture
    def screenshot_path(self):
        return os.path.join('tests', 'fixtures', 'screenshot4k.jpg')

    @pytest.fixture
    def layout_path(self):
        return 'scripts/layout.json'

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
        
        print("\n=== Image Analysis ===")
        print(f"Image size: {test_image.size}")
        print(f"Found {len(red_positions)} red pixels")
        if red_positions:
            print("\nRed pixel positions (first 10):")
            for x, y in red_positions[:10]:
                print(f"  ({x}, {y})")
        
        # Track detected and not detected conditions
        detected = []
        not_detected = []
        colors: Dict[str, Tuple[int, ...]] = {}
        
        print("\n=== Condition Checks ===")
        print("Screen center:", checker.screen_width // 2, checker.screen_height // 2)
        print("Scale factors (x, y):", checker.scale_factor_x, checker.scale_factor_y)
        
        # Check each condition
        for condition_id, condition in checker.conditions.items():
            color = mock_pixel(condition.x, condition.y)
            colors[condition_id] = color
            print(f"\nChecking {condition_id}:")
            print(f"  Position: ({condition.x}, {condition.y})")
            print(f"  Color found: {color}")
            print(f"  Expected color: {condition.color}")
            
            if checker._colors_match(color, condition.color):
                detected.append(condition_id)
            else:
                not_detected.append(condition_id)
        
        # Print results in a clear format
        print("\n=== Test Results ===")
        print(f"\nDetected Conditions ({len(detected)}):")
        for condition_id in sorted(detected):
            print(f"  ✓ {condition_id:<30} Color: {colors[condition_id]}")
            
        print(f"\nNot Detected ({len(not_detected)}):")
        for condition_id in sorted(not_detected):
            print(f"  ✗ {condition_id:<30} Color: {colors[condition_id]}")
        
        # Assert that we detected at least one condition
        assert len(detected) > 0, "No conditions were detected in the screenshot"

if __name__ == "__main__":
    pytest.main([__file__, "-s"])