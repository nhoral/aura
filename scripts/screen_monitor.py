import json
import time
import os
import sys
import argparse
from pathlib import Path
from typing import Dict, List, Optional, Any, Union, Tuple
import threading
import inputs
from pynput import keyboard
from pynput.keyboard import Key, Controller, Listener, KeyCode
from src.core.screen_checker import ScreenChecker

# Add project root to Python path
project_root = str(Path(__file__).resolve().parent.parent)
if project_root not in sys.path:
    sys.path.insert(0, project_root)

from config import INPUT_SETTINGS, MOVEMENT_SETTINGS

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
        
        # Replace single key tracking with multiple key tracking
        self.held_keys = {}  # Maps keys to their actions
        self.persistent_actions = set()  # Set of persistent action names
        
        # Movement state tracking
        self.movement_states = {
            "is_moving_forward": False,
            "is_moving_backward": False,
            "is_moving_left": False,
            "is_moving_right": False
        }
        self.keyboard_movement_keys = {
            key: KeyCode.from_char(value) 
            for key, value in MOVEMENT_SETTINGS["keyboard"].items()
        }
        self.pressed_keys = set()
        
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
            # Track if action is persistent
            if action.get("stopOnAction", True) is False:
                self.persistent_actions.add(action.get("name", ""))
                
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
        self.monitor_thread = None
        self.gamepad_available = False
        
        # Add special key mapping
        self.special_keys = {
            "up": Key.up,
            "down": Key.down,
            "left": Key.left,
            "right": Key.right,
            "shift": Key.shift,
            "ctrl": Key.ctrl,
            "enter": Key.enter,
            "space": Key.space,
            "tab": Key.tab,
            "esc": Key.esc
        }
        
        # Add counter-movement mapping
        self.counter_movement = {
            "is_moving_left": "right",
            "is_moving_right": "left",
            "is_moving_forward": "down",
            "is_moving_backward": "up"
        }
        
        # Track current hold state
        self.current_hold = None  # Will store (action, condition) tuple when holding
        self.current_counter_key = None  # Currently held counter-movement key
        self.cast_initiation_time = 0  # Track when we started a cast
        self.cast_initiation_timeout = 0.5  # How long to wait for cast to start
        
        # In test mode, don't start monitoring
        if not test_mode:
            self.start()
    
    def _release_held_key(self, key=None):
        """Release a specific held key or all held keys"""
        if key is not None:
            if key in self.held_keys:
                if isinstance(key, tuple):
                    self.keyboard.release(key[0])
                    self.keyboard.release(key[1])
                else:
                    self.keyboard.release(key)
                action = self.held_keys[key]
                del self.held_keys[key]
                if self.debug:
                    print(f"Released key: {key}")
        else:
            # Release all held keys
            for key in list(self.held_keys.keys()):
                self._release_held_key(key)
    
    def _monitor_loop(self):
        """Main monitoring loop that runs in a separate thread"""
        while self.running:
            try:
                current_time = time.time()
                if self.is_monitoring_active() and (current_time - self.last_check) >= self.check_interval:
                    # Get current conditions
                    active_conditions = self.checker.check_conditions()
                    
                    # Add movement conditions
                    movement_conditions = [
                        condition for condition, is_active in self.movement_states.items()
                        if is_active
                    ]
                    active_conditions.extend(movement_conditions)
                    
                    if self.debug:
                        print("\nMovement states:", {k: v for k, v in self.movement_states.items() if v})
                    
                    # Update counter-movement if we're holding
                    self._update_counter_movement(active_conditions)
                    
                    # Get next action
                    action = self.get_next_action(active_conditions)
                    
                    # Check if any held keys need to be released
                    for key, held_action in list(self.held_keys.items()):
                        # Check if conditions are still met
                        all_conditions_met = True
                        for condition in held_action["conditions"]:
                            if condition.startswith("!"):
                                condition_name = condition[1:]
                                if condition_name in active_conditions:
                                    all_conditions_met = False
                                    break
                            else:
                                if condition not in active_conditions:
                                    all_conditions_met = False
                                    break
                        if not all_conditions_met:
                            self._release_held_key(key)
                    
                    # Execute the action if we have one
                    if action:
                        self.execute_action(action)
                    
                    self.last_check = current_time
                elif not self.is_monitoring_active():
                    # Release all held keys if monitoring becomes inactive
                    self._release_held_key()
                    # Clear hold state
                    self.current_hold = None
                    if self.current_counter_key:
                        self.keyboard.release(self.current_counter_key)
                        self.current_counter_key = None
                
                time.sleep(0.01)
                    
            except Exception as e:
                print(f"\nError in monitor loop: {str(e)}")
    
    def start(self):
        """Start monitoring (initialize keyboard, gamepad, and monitoring loop)"""
        # Initialize keyboard listener
        self.keyboard_listener = Listener(on_press=self._on_key_press, on_release=self._on_key_release)
        self.keyboard_listener.start()
        
        # Start the monitoring loop in a separate thread
        self.monitor_thread = threading.Thread(target=self._monitor_loop)
        self.monitor_thread.daemon = True
        self.monitor_thread.start()
        
        # Try to initialize gamepad
        try:
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
        self._release_held_key()  # Release any held keys before stopping
        self.running = False
        if self.keyboard_listener:
            self.keyboard_listener.stop()
        if self.gamepad_thread and self.gamepad_thread.is_alive():
            self.gamepad_thread.join(timeout=1.0)
        if self.monitor_thread and self.monitor_thread.is_alive():
            self.monitor_thread.join(timeout=1.0)
    
    def _on_key_press(self, key):
        """Handle keyboard press events"""
        if key == self.exit_key:
            self.running = False
            return False  # Stop listener
        elif hasattr(key, 'char') and key.char == self.keyboard_trigger:
            if not self.trigger_held:
                if self.trigger_mode == "toggle":
                    self.monitoring_active = not self.monitoring_active
                    print(f"Monitoring {'activated' if self.monitoring_active else 'deactivated'}")
                else:  # hold mode
                    self.monitoring_active = True
                    print("Monitoring activated")
            self.trigger_held = True
        elif not self.gamepad_available and key in self.keyboard_movement_keys.values():
            self.pressed_keys.add(key)
            self._update_keyboard_movement_states()
        elif self.debug and hasattr(key, 'char'):
            if key.char == 'p':
                print("Saving screen image...")
                self.checker.save_debug_image()
            elif key.char == self.debug_key:
                conditions = self.checker.check_conditions()
                if conditions:
                    print(f"Current conditions: {conditions}")
                else:
                    print("No conditions detected")
                # Also print movement states when debugging
                print(f"Movement states: {self.movement_states}")
    
    def _on_key_release(self, key):
        """Handle keyboard release events"""
        if hasattr(key, 'char') and key.char == self.keyboard_trigger:
            if self.trigger_mode == "hold":
                self.monitoring_active = False
                print("Monitoring deactivated")
            self.trigger_held = False
        elif not self.gamepad_available and key in self.keyboard_movement_keys.values():
            self.pressed_keys.discard(key)
            self._update_keyboard_movement_states()
    
    def _update_keyboard_movement_states(self):
        """Update movement states based on currently pressed keys"""
        if not self.gamepad_available:
            self.movement_states = {
                "is_moving_forward": self.keyboard_movement_keys["forward"] in self.pressed_keys,
                "is_moving_backward": self.keyboard_movement_keys["backward"] in self.pressed_keys,
                "is_moving_left": self.keyboard_movement_keys["left"] in self.pressed_keys,
                "is_moving_right": self.keyboard_movement_keys["right"] in self.pressed_keys
            }
    
    def _monitor_gamepad(self):
        """Monitor gamepad input in separate thread"""
        try:
            while self.running:
                events = inputs.get_gamepad()
                for event in events:
                    if event.code == "ABS_RZ":  # Right trigger axis
                        self._monitor_gamepad_event(event)
                    elif event.code == "ABS_X":  # Left stick X-axis
                        self._update_gamepad_movement_states(event, "horizontal")
                    elif event.code == "ABS_Y":  # Left stick Y-axis
                        self._update_gamepad_movement_states(event, "vertical")
        except Exception as e:
            if self.gamepad_available:
                print(f"Gamepad error: {str(e)}")
                self.gamepad_available = False

    def _monitor_gamepad_event(self, event):
        """Handle a single gamepad event"""
        if event.code == "ABS_RZ":  # Right trigger axis
            new_state = event.state > 128
            if self.trigger_mode == "toggle":
                if new_state and not self.trigger_held:
                    self.monitoring_active = not self.monitoring_active
                    print(f"Monitoring {'activated' if self.monitoring_active else 'deactivated'}")
            else:  # hold mode
                self.monitoring_active = new_state
            self.trigger_held = new_state
    
    def _update_gamepad_movement_states(self, event, axis):
        """Update movement states based on gamepad stick position"""
        deadzone = MOVEMENT_SETTINGS["gamepad"]["stick_deadzone"]
        # Convert stick position to -1 to 1 range
        value = event.state / 32768.0
        
        if axis == "horizontal":
            self.movement_states["is_moving_left"] = value < -deadzone
            self.movement_states["is_moving_right"] = value > deadzone
        else:  # vertical
            self.movement_states["is_moving_forward"] = value < -deadzone
            self.movement_states["is_moving_backward"] = value > deadzone
    
    def is_monitoring_active(self):
        """Check if monitoring should be active"""
        return self.monitoring_active
    
    def get_next_action(self, active_conditions):
        """Get the next action to execute based on active conditions"""
        if not self.is_monitoring_active():
            return None

        if self.debug:
            print("\nActive conditions:", active_conditions)

        # If we're waiting for a cast to start, don't select new actions
        if self.current_hold and time.time() - self.cast_initiation_time < self.cast_initiation_timeout:
            if self.debug:
                print("Waiting for cast to start...")
            return None

        for action in self.profile["actions"]:
            all_conditions_met = True
            failed_conditions = []
            for condition in action["conditions"]:
                if condition.startswith("!"):
                    condition_name = condition[1:]
                    if condition_name in active_conditions:
                        all_conditions_met = False
                        failed_conditions.append(condition)
                        break
                else:
                    if condition not in active_conditions:
                        all_conditions_met = False
                        failed_conditions.append(condition)
                        break
            
            if all_conditions_met:
                if self.debug:
                    print(f"Selected action: {action.get('name', 'Name Missing')}")
                return action
            elif self.debug and action.get('name') == 'Fireball':
                print(f"Fireball conditions not met. Failed conditions: {failed_conditions}")
                print(f"Required conditions: {action['conditions']}")
        return None
    
    def _parse_key(self, key_str: str) -> Union[KeyCode, Key, Tuple[Key, KeyCode]]:
        """Parse a key string into a pynput key object"""
        # Handle special keys first
        if key_str.lower() in self.special_keys:
            return self.special_keys[key_str.lower()]
        
        # Parse modifiers
        modifiers = []
        base_key = key_str
        
        # Check for CTRL- prefix
        if base_key.startswith("CTRL-"):
            modifiers.append(Key.ctrl)
            base_key = base_key[5:]  # Remove CTRL- prefix
            
        # Check for SHIFT- prefix
        if base_key.startswith("SHIFT-"):
            modifiers.append(Key.shift)
            base_key = base_key[6:]  # Remove SHIFT- prefix
            
        # Remove HOLD- prefix if present (handled separately in execute_action)
        if base_key.startswith("HOLD-"):
            base_key = base_key[5:]
            
        # Convert base key
        if len(base_key) == 1:
            key_obj = KeyCode.from_char(base_key)
        else:
            key_obj = self.special_keys.get(base_key.lower(), KeyCode.from_char(base_key))
            
        # Return tuple of modifiers + key if we have modifiers
        if modifiers:
            return tuple(modifiers + [key_obj])
        return key_obj

    def _get_counter_movement_key(self):
        """Determine which counter-movement key to hold based on current movement
        
        Returns:
            str or None: The counter-movement key to hold, or None if no movement to counter
        """
        # Check each movement direction
        for movement, is_active in self.movement_states.items():
            if is_active:
                # Get the corresponding counter-movement key
                counter_dir = self.counter_movement.get(movement)
                if counter_dir:
                    return self.special_keys[counter_dir]
        return None

    def _update_counter_movement(self, active_conditions):
        """Update counter-movement key based on current movement and hold state"""
        if not self.current_hold:
            return

        action, hold_condition = self.current_hold
        
        # If we're still in cast initiation phase, don't release counter-movement
        if time.time() - self.cast_initiation_time < self.cast_initiation_timeout:
            if self.debug:
                print("Still in cast initiation phase, maintaining counter-movement")
            return

        # Check if we should continue holding
        if hold_condition.startswith('!'):
            should_hold = hold_condition[1:] not in active_conditions
        else:
            should_hold = hold_condition in active_conditions

        if not should_hold:
            # Release current counter-movement and clear hold state
            if self.current_counter_key:
                self.keyboard.release(self.current_counter_key)
                self.current_counter_key = None
            self.current_hold = None
            if self.debug:
                print(f"Hold condition {hold_condition} no longer met (condition not present), releasing counter-movement")
            return

        # Only update counter-movement if we're not already holding the right key
        needed_counter_key = self._get_counter_movement_key()
        if needed_counter_key != self.current_counter_key:
            # Release old counter-movement if any
            if self.current_counter_key:
                self.keyboard.release(self.current_counter_key)
                if self.debug:
                    print(f"Released counter-movement: {self.current_counter_key}")

            # Press new counter-movement if needed
            if needed_counter_key:
                self.keyboard.press(needed_counter_key)
                if self.debug:
                    print(f"Pressing counter-movement: {needed_counter_key}")

            self.current_counter_key = needed_counter_key

    def execute_action(self, action: Dict[str, Any]):
        """Execute a keyboard action"""
        action_name = action.get('name', 'Name Missing')
        key = action['key']
        
        # Debug output
        if self.debug:
            print(f"\nExecuting: {action_name} [key: {key}]")
            print(f"Currently held keys: {list(self.held_keys.keys())}")
        
        # Parse the action key early (but don't press yet)
        actual_key = self._parse_key(key)
        is_hold = key.startswith("HOLD-")
        
        # Handle hold property if present
        if 'hold' in action:
            # Set up hold state
            self.current_hold = (action, action['hold'])
            self.cast_initiation_time = time.time()  # Start tracking cast initiation
            
            # Get and apply counter-movement immediately
            needed_counter_key = self._get_counter_movement_key()
            if needed_counter_key:
                if self.debug:
                    print(f"Applying counter-movement {needed_counter_key} before action")
                self.keyboard.press(needed_counter_key)
                self.current_counter_key = needed_counter_key
                # Small delay to ensure counter-movement is applied
                time.sleep(self.key_hold_duration)
            
            if self.debug:
                print(f"Initialized hold state for {action_name}, condition: {action['hold']}")
        
        # Now execute the main action
        if is_hold:
            if actual_key not in self.held_keys:
                self.keyboard.press(actual_key)
                self.held_keys[actual_key] = action
                if self.debug:
                    print(f"Holding key: {actual_key}")
        else:
            self.keyboard.press(actual_key)
            time.sleep(self.key_hold_duration)
            self.keyboard.release(actual_key)
    
    def run(self):
        """Keep the program running until exit"""
        print("Starting monitor...")
        if self.gamepad_available:
            print(f"Using gamepad (right trigger) or keyboard ('{self.keyboard_trigger}' key)")
        else:
            print(f"Using keyboard controls ('{self.keyboard_trigger}' key)")
        print(f"Trigger mode: {self.trigger_mode}")
        exit_key_name = self.exit_key.name if hasattr(self.exit_key, 'name') else self.exit_key
        print(f"Press '{exit_key_name}' to exit")
        if self.debug:
            print(f"Press '{self.debug_key}' to show current conditions")
            print("Press 'p' to save a debug image")
        
        try:
            while self.running:
                time.sleep(0.1)
        except KeyboardInterrupt:
            print("\nStopping monitor.")
        finally:
            self.stop()

def main():
    parser = argparse.ArgumentParser(description='Screen condition monitor')
    parser.add_argument('--layout', '-l',
                      default='scripts/layout.json',
                      help='Path to layout JSON file')
    parser.add_argument('--profile', '-p',
                      default='scripts/profiles/warlock.json',
                      help='Path to profile JSON file')
    parser.add_argument('--debug', '-d',
                      action='store_true',
                      help='Enable debug mode')
    args = parser.parse_args()

    try:
        checker = ScreenChecker(args.layout)
        monitor = ScreenMonitor(checker, args.profile, args.debug)
        monitor.run()
    except Exception as e:
        print(f"Error: {str(e)}")
        return 1
    return 0

if __name__ == "__main__":
    sys.exit(main())