from pathlib import Path

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
    "keyboard_trigger": "r",  # Key to hold for keyboard activation
    "key_hold_duration": 0.1,  # Duration in seconds to hold keys when executing actions
    "check_interval": 0.1     # Interval in seconds between condition checks
}

# Aura generation settings
GRID_SETTINGS = {
    "COLUMNS": 30,
    "AURA_WIDTH": 3,
    "AURA_HEIGHT": 3,
    "SPACING": 1
}

# Addon metadata
ADDON_INFO = {
    "interface_version": "100200",
    "title": "AuraManager",
    "notes": "Manages and exports WeakAuras",
    "author": "Your Name",
    "version": "1.0"
}