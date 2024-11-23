from pathlib import Path

# Project paths
PROJECT_ROOT = Path(__file__).parent
SCRIPTS_DIR = PROJECT_ROOT / "scripts"
AURAS_DIR = PROJECT_ROOT / "AuraManager" / "auras"
TEMPLATES_DIR = SCRIPTS_DIR / "templates"

# WoW paths
WOW_PATH = Path(r"c:\Program Files (x86)\World of Warcraft\_retail_")
WEAKAURAS_PATH = WOW_PATH / "WTF" / "Account" / "YABUCHI" / "SavedVariables" / "WeakAuras.lua"

# Aura generation settings
GRID_SETTINGS = {
    "COLUMNS": 10,
    "AURA_WIDTH": 5,
    "AURA_HEIGHT": 5,
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