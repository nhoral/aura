import os
from pathlib import Path

def get_wow_path():
    # You might want to make this configurable
    default_paths = [
        "C:/Program Files (x86)/World of Warcraft/_retail_",
        "C:/Program Files/World of Warcraft/_retail_"
    ]
    
    for path in default_paths:
        if os.path.exists(path):
            return path
    
    raise FileNotFoundError("WoW installation not found")

def get_weakauras_saved_variables_path():
    wow_path = get_wow_path()
    return os.path.join(
        wow_path,
        "WTF",
        "Account",
        # These would need to be configurable
        "YABUCHI",
        "SavedVariables",
        "WeakAuras.lua"
    )
