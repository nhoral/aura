# Aura Manager

A Python-based tool for automating World of Warcraft actions based on WeakAuras visual indicators.

## Project Overview

This project bridges WeakAuras (a WoW addon) with automated actions by:
1. Reading pixel colors at specific screen locations where WeakAuras indicators are displayed
2. Converting these visual indicators into game state information (health, power, combat status, etc.)
3. Executing predefined actions (key presses) based on the current game state

## Core Components

### Screen Checker (`src/core/screen_checker.py`)
- Monitors specific pixel locations on screen
- Converts WeakAuras visual indicators into game state conditions
- Handles screen resolution scaling and color matching
- Configuration via `layout.json` which defines indicator positions and colors

### Screen Monitor (`scripts/screen_monitor.py`)
- Main orchestration component
- Loads action profiles
- Continuously checks conditions via Screen Checker
- Executes keyboard actions based on active conditions
- Handles cooldowns and compound conditions

### Profiles (`scripts/profiles/*.json`)
JSON files that define:
- What key to press for each condition
- Additional required conditions
- Cooldowns and hold durations
- Example: `rogue.json` for rogue class automation

## Configuration Files

### Layout (`scripts/layout.json`)
```json
[
    {
        "id": "power_40",
        "name": "Power at 40%",
        "xOffset": 10,
        "yOffset": 0,
        "backgroundColor": {
            "r": 1.0,
            "g": 0.0,
            "b": 0.0,
            "a": 1.0
        }
    }
]
```

### Profile (`scripts/profiles/rogue.json`)
```json
{
    "name": "Rogue",
    "check_interval": 0.1,
    "actions": {
        "power_40": {
            "key": "3",
            "cooldown": 0.1,
            "conditions": ["combat", "enemy_in_melee_range"]
        }
    }
}
```

## Current State

The project currently:
- Successfully monitors WeakAuras indicators
- Executes actions based on profiles
- Handles basic cooldowns and compound conditions
- Supports debug mode for troubleshooting

Next steps:
- [ ] Add more sophisticated condition combinations
- [ ] Improve error handling and logging
- [ ] Add profile validation
- [ ] Create more class profiles

## Development Setup

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Create a WeakAuras layout in WoW that shows conditions as colored pixels

3. Configure `layout.json` to match your WeakAuras positions

4. Create or modify a profile in `scripts/profiles/`

5. Run the monitor:
```bash
python scripts/screen_monitor.py --debug
```

## Architecture Notes

### Screen Checking
- Base resolution: 1366x768
- Automatic scaling for other resolutions
- Color matching with tolerance for variations
- Special handling for red detection

### Action System
- Conditions can require multiple indicators
- Cooldown tracking per action
- Configurable key hold durations
- Non-blocking keyboard listener for exit command

## Contributing

When modifying the project:
1. Screen Checker should only handle visual detection
2. Screen Monitor manages game logic and actions
3. Keep profiles in JSON for easy editing
4. Use debug mode for testing changes

## Dependencies
- pyautogui: Screen pixel reading
- pynput: Keyboard control
- pillow: Image processing
- pytest: Testing
- lupa: Lua parsing (for WeakAuras import)