import time
from pynput.keyboard import Key, Controller
from src.core.screen_checker import ScreenChecker
import argparse
import json
import sys

def load_key_mappings(mappings_file: str) -> dict:
    """Load key mappings from a JSON file"""
    try:
        with open(mappings_file, 'r') as f:
            return json.load(f)
    except FileNotFoundError:
        print(f"Error: Mappings file '{mappings_file}' not found")
        sys.exit(1)
    except json.JSONDecodeError:
        print(f"Error: Invalid JSON in mappings file '{mappings_file}'")
        sys.exit(1)

def main():
    parser = argparse.ArgumentParser(description='Screen condition checker and key presser')
    
    parser.add_argument('--layout', '-l',
                      default='data/layout.json',
                      help='Path to layout JSON file (default: data/layout.json)')
    
    parser.add_argument('--mappings', '-m',
                      default='data/mappings.json',
                      help='Path to key mappings JSON file (default: data/mappings.json)')
    
    parser.add_argument('--debug', '-d',
                      action='store_true',
                      help='Enable debug mode to show coordinate calculations')
    
    parser.add_argument('--interval', '-i',
                      type=float,
                      default=0.1,
                      help='Check interval in seconds (default: 0.1)')

    args = parser.parse_args()

    try:
        # Initialize checker with layout file
        checker = ScreenChecker(args.layout)
        
        # Load key mappings
        key_mappings = load_key_mappings(args.mappings)
        
        # Initialize keyboard controller
        keyboard = Controller()
        
        if args.debug:
            print(f"Screen resolution: {checker.screen_width}x{checker.screen_height}")
            print(f"Scale factor: {checker.scale_factor}")
            print("\nConfigured conditions:")
            for condition_id in key_mappings.keys():
                checker.debug_coordinates(condition_id)
            print("\nPress Enter to start checking, or Ctrl+C to exit...")
            input()

        print(f"\nStarting screen checker with {len(key_mappings)} conditions.")
        print("Press 'esc' to exit.")
        
        running = True
        while running:
            # Check each condition and press corresponding key if true
            for condition_id, key in key_mappings.items():
                if checker.check_condition(condition_id):
                    keyboard.press(key)
                    keyboard.release(key)
            
            time.sleep(args.interval)
            
            # Check if esc is pressed (need to implement this differently with pynput)
            try:
                with keyboard.pressed(Key.esc):
                    running = False
            except:
                pass
                
    except KeyboardInterrupt:
        print("\nStopping screen checker.")
    except Exception as e:
        print(f"\nError: {str(e)}")
        sys.exit(1)

if __name__ == "__main__":
    main()