from pathlib import Path

# Default paths
DEFAULT_WOW_PATH = Path("C:/Program Files (x86)/World of Warcraft/_retail_/WTF/Account/")
DEFAULT_WEAKAURAS_LUA_PATH = Path("C:/Program Files (x86)/World of Warcraft/_retail_/WTF/Account/YABUCHI/SavedVariables/")
DEFAULT_AURAS_DIR = Path("auras")
DEFAULT_BACKUP_DIR = Path("backups")

# WeakAuras settings
WEAKAURAS_FILE = "WeakAuras.lua"
WEAKAURAS_DB_VERSION = 78

# Validation settings
REQUIRED_FIELDS = [
    "id",
    "triggers",
    "regionType"
]

VALID_REGION_TYPES = [
    "icon",
    "aurabar",
    "dynamicgroup",
    "group",
    "text",
    "progresstexture",
    "model"
]

VALID_TRIGGER_TYPES = [
    "aura",
    "aura2",
    "unit",
    "combat_log",
    "status",
    "custom",
    "power",
    "health",
    "cooldown",
    "charges",
    "item",
    "spell",
    "totem",
    "stance",
    "pet",
    "event",
    "combat",
    "cast",
    "ready_check",
    "equipment_set",
]

# Default aura settings
DEFAULT_AURA_VALUES = {
    "position": {
        "xOffset": 0,
        "yOffset": 0,
        "anchorPoint": "CENTER"
    },
    "visual": {
        "color": [1, 1, 1, 1],
        "desaturate": False,
        "alpha": 1
    }
}

# File patterns
BACKUP_FILE_PATTERN = "WeakAuras_{timestamp}.lua"
YAML_FILE_PATTERN = "*.yaml"

# Version info
VERSION = "0.1.0"
