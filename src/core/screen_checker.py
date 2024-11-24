import pyautogui
from dataclasses import dataclass
from typing import Tuple, Dict
import json
import platform

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
        self.BASE_WIDTH = 1024
        
        # Load the test image dimensions
        self.screen_width, self.screen_height = pyautogui.size()
        
        # Calculate WeakAuras scaling factor
        # WA seems to use a different approach to scaling
        self.scale_factor = (self.screen_width / self.BASE_WIDTH) * (2/3)  # Try 2/3 adjustment
        
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
        reference_y = int(self.screen_height * 0.09)
        
        for item in layout:
            # Scale the offsets using single scale factor
            scaled_x_offset = item['xOffset'] * self.scale_factor * 6
            scaled_y_offset = item['yOffset'] * self.scale_factor * 6
            
            # Convert to absolute screen coordinates
            x = reference_x - scaled_x_offset
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

    def _is_retina_display(self) -> bool:
        """Check if running on a Mac retina display"""
        return platform.system() == 'Darwin' and getattr(pyautogui, '_pyautogui_x11', None) is None

    def _get_pixel(self, x: int, y: int) -> Tuple[int, ...]:
        """Get the color of a pixel at the specified coordinates"""
        return pyautogui.pixel(x, y)

    def check_condition(self, condition_id: str) -> bool:
        """Check if a specific condition is met by comparing screen color"""
        condition = self.conditions[condition_id]
        
        # Get pixel color at the specified coordinates
        screen_color = self._get_pixel(condition.x, condition.y)
        
        # Compare colors (with some tolerance for slight variations)
        return self._colors_match(screen_color, condition.color)

    def _colors_match(self, color1: Tuple[int, ...], color2: Tuple[int, ...], tolerance: int = 5) -> bool:
        """Compare colors with tolerance for slight variations"""
        # No need to normalize color2 anymore since we convert at creation time
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