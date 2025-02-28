from pathlib import Path
from pynput.keyboard import Key

# Base resolution for WeakAuras scaling calculations
WEAKAURAS_BASE_WIDTH = 1366
WEAKAURAS_BASE_HEIGHT = 768

# Project paths
PROJECT_ROOT = Path(__file__).parent
SCRIPTS_DIR = PROJECT_ROOT / "scripts"
AURAS_DIR = PROJECT_ROOT / "AuraManager" / "auras"
TEMPLATES_DIR = SCRIPTS_DIR / "templates"

# WoW paths
WOW_PATH = Path(r"c:\Program Files (x86)\World of Warcraft\_classic_era_")
WEAKAURAS_PATH = WOW_PATH / "WTF" / "Account" / "YABUCHI" / "SavedVariables" / "WeakAuras.lua"

# Input settings
INPUT_SETTINGS = {
    "key_hold_duration": 0.1,  # How long to hold down keys when executing actions
    "check_interval": 0.01,    # How often to check for conditions (in seconds)
    "keyboard_trigger": "]",   # Key to use as trigger when no gamepad available
    "trigger_mode": "hold",  # Can be "hold" or "toggle"
    "exit_key": "[",       # Key to terminate the program
    "debug_key": "u",         # Key to print current conditions
}

# Aura generation settings
GRID_SETTINGS = {
    "COLUMNS": 30,
    "AURA_WIDTH": 3,
    "AURA_HEIGHT": 3,
    "SPACING": 1,
    # Base offset from center of screen
    "BASE_X_OFFSET": -656,  # Positive moves right, negative moves left
    "BASE_Y_OFFSET": -295   # Positive moves up, negative moves down
}

# Movement detection settings
MOVEMENT_SETTINGS = {
    "keyboard": {
        "forward": "w",
        "backward": "s",
        "left": "a",
        "right": "d"
    },
    "gamepad": {
        "stick_deadzone": 0.2  # Minimum analog stick movement to register as direction
    }
}

# Addon metadata
ADDON_INFO = {
    "interface_version": "100200",
    "title": "AuraManager",
    "notes": "Manages and exports WeakAuras",
    "author": "Your Name",
    "version": "1.0"
}