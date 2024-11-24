import pyautogui
from dataclasses import dataclass
from typing import Tuple, Dict
import json
import platform
from PIL import Image, ImageDraw

@dataclass
class Condition:
    id: str
    name: str
    x: int
    y: int
    color: Tuple[int, int, int, int]

class ScreenChecker:
    def __init__(self, layout_path: str):
        # Base resolution that the offsets are designed for
        self.BASE_HEIGHT = 768
        self.BASE_WIDTH = 1366
        
        # Load the test image dimensions
        self.screen_width, self.screen_height = pyautogui.size()
        
        # Calculate WeakAuras scaling factor
        # WA seems to use a different approach to scaling
        self.scale_factor = (self.screen_width / self.BASE_WIDTH)
        
        # For compatibility with tests
        self.scale_factor_x = self.scale_factor
        self.scale_factor_y = self.scale_factor
        
        # Load and parse layout file
        with open(layout_path, 'r') as f:
            layout = json.load(f)
            
        # Convert layout to conditions
        self.conditions = {}
        
        # Calculate reference point
        reference_x = self.screen_width // 2
        reference_y = int(self.screen_height // 2)
        
        for item in layout:
            # Scale the offsets using single scale factor
            scaled_x_offset = item['xOffset'] * self.scale_factor
            scaled_y_offset = item['yOffset'] * self.scale_factor
            
            # Convert to absolute screen coordinates
            x = reference_x + scaled_x_offset
            y = reference_y - scaled_y_offset
            
            # Create condition object
            color = tuple(int(c * 255) for c in item['backgroundColor'].values())
            self.conditions[item['id']] = Condition(
                id=item['id'],
                name=item['name'],
                x=int(x),
                y=int(y),
                color=color
            )
        
        self.CROSSHAIR_SIZE = 20  # Size of the crosshair in pixels
        self.REGION_SIZE = 100    # Size of the screenshot region

    def _is_retina_display(self) -> bool:
        """Check if running on a Mac retina display"""
        return platform.system() == 'Darwin' and getattr(pyautogui, '_pyautogui_x11', None) is None

    def _get_pixel(self, x: int, y: int) -> Tuple[int, ...]:
        """Get the color of a pixel at the specified coordinates"""
        return pyautogui.pixel(x, y)

    def _take_debug_screenshot(self, x: int, y: int, condition_id: str) -> None:
        """Take a screenshot with a crosshair at the specified coordinates"""
        # Calculate region bounds
        left = max(0, x - self.REGION_SIZE // 2)
        top = max(0, y - self.REGION_SIZE // 2)
        width = self.REGION_SIZE
        height = self.REGION_SIZE
        
        # Capture the region
        screenshot = pyautogui.screenshot(region=(left, top, width, height))
        
        # Convert to PIL Image and draw crosshair
        draw = ImageDraw.Draw(screenshot)
        
        # Calculate crosshair center relative to region
        center_x = x - left
        center_y = y - top
        
        # Draw crosshair lines
        draw.line((center_x - self.CROSSHAIR_SIZE//2, center_y, 
                   center_x + self.CROSSHAIR_SIZE//2, center_y), fill='yellow', width=1)
        draw.line((center_x, center_y - self.CROSSHAIR_SIZE//2,
                   center_x, center_y + self.CROSSHAIR_SIZE//2), fill='yellow', width=1)
        
        # Save the screenshot
        screenshot.save(f'outputs/{condition_id}_check.png')

    def check_condition(self, condition_id: str) -> bool:
        """Check if a specific condition is met by comparing screen color"""
        condition = self.conditions[condition_id]
        
        screen_color = self._get_pixel(condition.x, condition.y)
        
        # Take debug screenshot with crosshair
        self._take_debug_screenshot(condition.x, condition.y, condition_id)
        
        print(f"Checking {condition_id}:")
        print(f"  Expected color: {condition.color}")
        print(f"  Found color: {screen_color}")
        print(f"  Position: ({condition.x}, {condition.y})")
        
        return self._colors_match(screen_color, condition.color)

    def _colors_match(self, color1: Tuple[int, ...], color2: Tuple[int, ...], tolerance: int = 5) -> bool:
        """Compare colors with tolerance for slight variations"""
        # Special case for red detection
        def is_red(color):
            r, g, b = color[:3]  # Take first 3 values in case there's alpha
            return (235 <= r <= 255) and (0 <= g <= 20) and (0 <= b <= 20)
        
        # If either color is red, check if both are red
        if is_red(color1) or is_red(color2):
            return is_red(color1) and is_red(color2)
        
        # For non-red colors, use the standard tolerance check
        return all(abs(c1 - c2) <= tolerance for c1, c2 in zip(color1, color2))

    def debug_coordinates(self, condition_id: str) -> None:
        """Print debug information for a specific condition's coordinates"""
        condition = self.conditions[condition_id]
        center_x = self.screen_width // 2
        center_y = self.screen_height // 2
        
        print(f"Condition: {condition.name}")
        print(f"Screen resolution: {self.screen_width}x{self.screen_height}")
        print(f"Scale factors (x, y): {self.scale_factor}, {self.scale_factor}")
        print(f"Center point: ({center_x}, {center_y})")
        print(f"Final coordinates: ({condition.x}, {condition.y})")
        print(f"Offset from center: ({condition.x - center_x}, {condition.y - center_y})")

    def get_all_coordinates(self) -> Dict[str, Tuple[int, int]]:
        """Return a dictionary of all condition coordinates"""
        return {cond_id: (cond.x, cond.y) for cond_id, cond in self.conditions.items()}