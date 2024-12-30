import json
import time
import os
import sys
import argparse
from pathlib import Path
from typing import Dict, List, Optional, Any
import threading
import inputs
from pynput import keyboard
from pynput.keyboard import Key, Controller, Listener, KeyCode
from src.core.screen_checker import ScreenChecker

# Add project root to Python path
project_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, project_root)

from config import INPUT_SETTINGS

class ScreenMonitor:
    def __init__(self, checker: ScreenChecker, profile_path: str, debug: bool = False, test_mode: bool = False):
        """Initialize the screen monitor with a checker and profile"""
        self.checker = checker
        self.keyboard = Controller()
        self.debug = debug
        self.running = True
        self.monitoring_active = False
        self.last_check = 0
        self.test_mode = test_mode
        
        # Load profile
        with open(profile_path, 'r') as f:
            self.profile = json.load(f)
            
        # Validate profile
        if "actions" not in self.profile:
            raise KeyError("Profile must contain 'actions' list")
            
        for action in self.profile["actions"]:
            if "key" not in action:
                raise KeyError("Each action must contain a 'key' field")
            if "conditions" not in action:
                raise KeyError("Each action must contain a 'conditions' list")
                
        # Load settings from config
        self.key_hold_duration = INPUT_SETTINGS["key_hold_duration"]
        self.check_interval = INPUT_SETTINGS["check_interval"]
        self.keyboard_trigger = INPUT_SETTINGS["keyboard_trigger"]
        self.trigger_mode = INPUT_SETTINGS.get("trigger_mode", "hold")  # Default to hold mode
        self.exit_key = INPUT_SETTINGS.get("exit_key", Key.esc)  # Default to escape key
        self.debug_key = INPUT_SETTINGS.get("debug_key", "u")  # Default to 'u' key
        
        # Initialize state
        self.trigger_held = False
        self.keyboard_listener = None
        self.gamepad_thread = None
        self.gamepad_available = False
        
        # In test mode, don't start input monitoring
        if not test_mode:
            self.start()
    
    def start(self):
        """Start monitoring (initialize keyboard and gamepad)"""
        # Initialize keyboard listener
        self.keyboard_listener = Listener(on_press=self._on_key_press, on_release=self._on_key_release)
        self.keyboard_listener.start()
        
        # Try to initialize gamepad
        try:
            # Test if gamepad is available
            inputs.get_gamepad()
            self.gamepad_available = True
            self.gamepad_thread = threading.Thread(target=self._monitor_gamepad)
            self.gamepad_thread.daemon = True
            self.gamepad_thread.start()
            print("Gamepad detected and monitoring started")
        except Exception as e:
            print("No gamepad detected, using keyboard controls only")
    
    def stop(self):
        """Stop monitoring and clean up resources"""
        self.running = False
        if self.keyboard_listener:
            self.keyboard_listener.stop()
        if self.gamepad_thread and self.gamepad_thread.is_alive():
            self.gamepad_thread.join(timeout=1.0)
    
    def _on_key_press(self, key):
        """Handle keyboard press events"""
        if key == self.exit_key:
            self.running = False
            return False  # Stop listener
        elif hasattr(key, 'char') and key.char == self.keyboard_trigger:
            if self.trigger_mode == "toggle":
                self.monitoring_active = not self.monitoring_active
                print(f"Monitoring {'activated' if self.monitoring_active else 'deactivated'}")
            else:
                self.trigger_held = True
        # Only handle debug keys if debug mode is enabled
        elif self.debug and hasattr(key, 'char'):
            if key.char == 'p':
                print("Saving screen image...")
                self.checker.save_debug_image()
            elif key.char == self.debug_key:
                # Check and print current conditions
                conditions = self.checker.check_conditions()
                if conditions:
                    print(f"Current conditions: {conditions}")
                else:
                    print("No conditions detected")
    
    def _on_key_release(self, key):
        """Handle keyboard release events"""
        if hasattr(key, 'char') and key.char == self.keyboard_trigger:
            if self.trigger_mode == "hold":
                self.trigger_held = False
    
    def _monitor_gamepad(self):
        """Monitor gamepad input in separate thread"""
        try:
            while self.running:
                events = inputs.get_gamepad()
                for event in events:
                    if event.code == "ABS_RZ":  # Right trigger axis
                        if self.trigger_mode == "toggle":
                            # Toggle monitoring state on trigger press/release
                            new_state = event.state > 128
                            if new_state and not self.trigger_held:  # Only toggle on press
                                self.monitoring_active = not self.monitoring_active
                                print(f"Monitoring {'activated' if self.monitoring_active else 'deactivated'}")
                            self.trigger_held = new_state
                        else:
                            # Hold mode - directly use trigger state
                            self.trigger_held = event.state > 128
        except Exception as e:
            if self.gamepad_available:  # Only print error if gamepad was initially available
                print(f"Gamepad error: {str(e)}")
                self.gamepad_available = False
    
    def is_monitoring_active(self):
        """Check if monitoring should be active based on current mode and trigger state"""
        if self.test_mode:
            return self.monitoring_active
        if self.trigger_mode == "toggle":
            return self.monitoring_active
        return self.trigger_held
    
    def get_next_action(self, active_conditions):
        """Get the next action to execute based on active conditions"""
        if not self.is_monitoring_active():
            return None

        for action in self.profile["actions"]:
            all_conditions_met = True
            for condition in action["conditions"]:
                # Handle negated conditions
                if condition.startswith("!"):
                    condition_name = condition[1:]  # Remove the ! prefix
                    if condition_name in active_conditions:
                        all_conditions_met = False
                        break
                else:
                    if condition not in active_conditions:
                        all_conditions_met = False
                        break
            
            if all_conditions_met:
                return action

        return None
    
    def execute_action(self, action: Dict[str, Any]):
        """Execute a keyboard action"""
        action_name = action.get('name', 'Name Missing')
        print(f"Executing Action: {action_name} [pressing {action['key']}]")
        self.keyboard.press(action['key'])
        time.sleep(self.key_hold_duration)
        self.keyboard.release(action['key'])
    
    def run(self):
        """Main monitoring loop"""
        self.start()  # Initialize keyboard and gamepad
        
        print("Starting monitor...")
        if self.gamepad_available:
            print(f"Using gamepad (right trigger) or keyboard ('{self.keyboard_trigger}' key)")
        else:
            print(f"Using keyboard controls ('{self.keyboard_trigger}' key)")
        print(f"Trigger mode: {self.trigger_mode}")
        # Get the key name in a user-friendly format
        exit_key_name = self.exit_key.name if hasattr(self.exit_key, 'name') else self.exit_key
        print(f"Press '{exit_key_name}' to exit")
        # Only show debug commands if debug mode is enabled
        if self.debug:
            print(f"Press '{self.debug_key}' to show current conditions")
            print("Press 'p' to save a debug image")
        
        while self.running:
            try:
                # Check conditions and execute actions if monitoring is active
                if self.is_monitoring_active():
                    # Get current conditions
                    active_conditions = self.checker.check_conditions()
                    
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
        
        # Clean up
        self.stop()

def main():
    parser = argparse.ArgumentParser(description='Screen condition monitor')
    parser.add_argument('--layout', '-l',
                      default='scripts/layout.json',
                      help='Path to layout JSON file')
    parser.add_argument('--profile', '-p',
                      default='scripts/profiles/hunter.json',
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