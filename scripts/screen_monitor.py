import time
from pynput.keyboard import Key, Controller, Listener
from src.core.screen_checker import ScreenChecker
from dataclasses import dataclass
from typing import Dict, List, Optional
import argparse
import json
import sys
from inputs import get_gamepad
import threading
import os
import sys

# Add project root to Python path
project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, project_root)

from config import INPUT_SETTINGS

@dataclass
class Action:
    key: str
    conditions: List[str]

class ScreenMonitor:
    def __init__(self, checker: ScreenChecker, profile_path: str, debug: bool = False):
        self.checker = checker
        self.keyboard = Controller()
        self.debug = debug
        self.running = True
        self.trigger_held = False  # Track if right trigger is held
        
        # Load settings from config
        self.key_hold_duration = INPUT_SETTINGS["key_hold_duration"]
        self.check_interval = INPUT_SETTINGS["check_interval"]
        self.keyboard_trigger = INPUT_SETTINGS["keyboard_trigger"]
        
        # Load profile
        with open(profile_path, 'r') as f:
            profile_data = json.load(f)
            self.actions = self._load_actions(profile_data)
        
        # Setup keyboard listener for escape key and trigger
        self.listener = Listener(on_press=self._on_key_press, on_release=self._on_key_release)
        self.listener.start()
        
        # Start gamepad monitoring in separate thread
        self.gamepad_thread = threading.Thread(target=self._monitor_gamepad)
        self.gamepad_thread.daemon = True
        self.gamepad_thread.start()
    
    def _on_key_press(self, key):
        """Handle keyboard press events"""
        if key == Key.esc:
            self.running = False
            return False  # Stop listener
        elif hasattr(key, 'char') and key.char == self.keyboard_trigger:
            self.trigger_held = True
            if self.debug:
                print(f"{self.keyboard_trigger.upper()} key pressed - monitoring active")
    
    def _on_key_release(self, key):
        """Handle keyboard release events"""
        if hasattr(key, 'char') and key.char == self.keyboard_trigger:
            self.trigger_held = False
            if self.debug:
                print(f"{self.keyboard_trigger.upper()} key released - monitoring inactive")

    def _monitor_gamepad(self):
        """Monitor gamepad input in separate thread"""
        try:
            while self.running:
                events = get_gamepad()
                for event in events:
                    if event.code == "ABS_RZ":  # Right trigger axis
                        # Convert trigger value (0-255) to boolean
                        self.trigger_held = event.state > 128
                        if self.debug and event.state > 128:
                            print(f"Trigger pressed: {event.state}")
        except Exception as e:
            if self.debug:
                print(f"Gamepad error: {str(e)}")
    
    def _load_actions(self, profile_data: dict) -> List[Action]:
        """Convert profile JSON into Action objects"""
        if 'actions' not in profile_data:
            raise KeyError("Profile must contain 'actions' field")
            
        actions = []
        for action_data in profile_data['actions']:
            if 'key' not in action_data:
                raise KeyError("Action must contain 'key' field")
            if 'conditions' not in action_data:
                raise KeyError("Action must contain 'conditions' field")
                
            actions.append(Action(
                key=action_data['key'],
                conditions=action_data['conditions']
            ))
        return actions
    
    def get_next_action(self, active_conditions: List[str]) -> Optional[Action]:
        """Determine next action based on active conditions"""
        # Don't process actions if trigger isn't held
        if not self.trigger_held:
            return None
            
        for action in self.actions:
            # Skip if any condition isn't met
            if not all(c in active_conditions for c in action.conditions):
                continue
                
            return action
            
        return None
    
    def execute_action(self, action: Action):
        """Execute a keyboard action"""
        if self.debug:
            print(f"Pressing key: {action.key}")
            
        self.keyboard.press(action.key)
        time.sleep(self.key_hold_duration)
        self.keyboard.release(action.key)
    
    def run(self):
        """Main monitoring loop"""
        print("Starting monitor...")
        print(f"Hold right trigger (or '{self.keyboard_trigger}' key) to activate monitoring")
        print("Press 'esc' to exit")
        
        while self.running:
            try:
                # Only check conditions and execute actions if trigger is held
                if self.trigger_held:
                    # Get current conditions
                    active_conditions = self.checker.check_conditions()
                    
                    if self.debug:
                        print(f"Active conditions: {active_conditions}")
                    
                    # Get and execute next action if any
                    action = self.get_next_action(active_conditions)
                    if action:
                        self.execute_action(action)
                
                # Sleep for interval
                time.sleep(self.check_interval)
                    
            except KeyboardInterrupt:
                print("\nStopping monitor.")
                self.running = False
            except Exception as e:
                print(f"\nError: {str(e)}")
                if self.debug:
                    import traceback
                    traceback.print_exc()
        
        # Clean up
        self.listener.stop()
        self.gamepad_thread.join(timeout=1.0)

def main():
    parser = argparse.ArgumentParser(description='Screen condition monitor')
    parser.add_argument('--layout', '-l',
                      default='scripts/layout.json',
                      help='Path to layout JSON file')
    parser.add_argument('--profile', '-p',
                      default='scripts/profiles/rogue.json',
                      help='Path to profile JSON file')
    parser.add_argument('--debug', '-d',
                      action='store_true',
                      help='Enable debug mode')
    args = parser.parse_args()

    try:
        # Initialize checker
        checker = ScreenChecker(args.layout)
        
        # Initialize and run monitor
        monitor = ScreenMonitor(checker, args.profile, args.debug)
        monitor.run()
        
    except KeyboardInterrupt:
        print("\nStopping monitor.")
    except Exception as e:
        print(f"\nError: {str(e)}")
        sys.exit(1)

if __name__ == "__main__":
    main()