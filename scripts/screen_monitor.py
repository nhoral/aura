import time
from pynput.keyboard import Key, Controller, Listener
from src.core.screen_checker import ScreenChecker
from dataclasses import dataclass
from typing import Dict, List, Optional
import argparse
import json
import sys

@dataclass
class Action:
    key: str
    hold_duration: float = 0.1
    cooldown: float = 0.0
    conditions: List[str] = None  # Additional conditions that must be true

class ScreenMonitor:
    def __init__(self, checker: ScreenChecker, profile_path: str, debug: bool = False):
        self.checker = checker
        self.keyboard = Controller()
        self.debug = debug
        self.last_action_time = {}  # Track cooldowns
        self.running = True
        
        # Load profile
        with open(profile_path, 'r') as f:
            profile_data = json.load(f)
            self.actions = self._load_actions(profile_data)
            self.check_interval = profile_data.get('check_interval', 0.1)
        
        # Setup keyboard listener
        self.listener = Listener(on_press=self._on_press)
        self.listener.start()
    
    def _on_press(self, key):
        """Handle key press events"""
        if key == Key.esc:
            self.running = False
            return False  # Stop listener
    
    def _load_actions(self, profile_data: dict) -> Dict[str, Action]:
        """Convert profile JSON into Action objects"""
        actions = {}
        for trigger, action_data in profile_data.get('actions', {}).items():
            actions[trigger] = Action(
                key=action_data['key'],
                hold_duration=action_data.get('hold_duration', 0.1),
                cooldown=action_data.get('cooldown', 0.0),
                conditions=action_data.get('conditions', [])
            )
        return actions
    
    def get_next_action(self, active_conditions: List[str]) -> Optional[Action]:
        """Determine next action based on active conditions"""
        current_time = time.time()
        
        for condition, action in self.actions.items():
            # Skip if primary condition isn't met
            if condition not in active_conditions:
                continue
                
            # Skip if on cooldown
            last_time = self.last_action_time.get(condition, 0)
            if current_time - last_time < action.cooldown:
                continue
                
            # Skip if additional conditions aren't met
            if action.conditions and not all(c in active_conditions for c in action.conditions):
                continue
                
            return action
            
        return None
    
    def execute_action(self, action: Action):
        """Execute a keyboard action"""
        if self.debug:
            print(f"Pressing key: {action.key}")
            
        self.keyboard.press(action.key)
        time.sleep(action.hold_duration)
        self.keyboard.release(action.key)
        
        # Update cooldown
        self.last_action_time[action.key] = time.time()
    
    def run(self):
        """Main monitoring loop"""
        print("Starting monitor...")
        print("Press 'esc' to exit")
        
        while self.running:
            try:
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