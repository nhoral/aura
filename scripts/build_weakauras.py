#!/usr/bin/env python3
import sys
from pathlib import Path

# Add the project root to the Python path
project_root = Path(__file__).parent.parent
sys.path.append(str(project_root))

from src.config import (
    DEFAULT_WEAKAURAS_LUA_PATH,
    DEFAULT_AURAS_DIR,
    DEFAULT_BACKUP_DIR
)

def build_weakauras(source_dir: Path = DEFAULT_AURAS_DIR,
                    target_path: Path = DEFAULT_WEAKAURAS_LUA_PATH) -> int:
    """Build WeakAuras.lua from individual aura files"""
    print(f"Loading auras from: {source_dir}")
    print(f"Building WeakAuras.lua at: {target_path}")
    
    try:
        # Create backup of current WeakAuras.lua if it exists
        if target_path.exists():
            backup_path = target_path.with_suffix('.bak')
            target_path.rename(backup_path)
            print(f"Created backup of existing WeakAuras.lua at {backup_path}")
        
        # Initialize content with the header
        content = [
            "WeakAurasSaved = {",
            "    [\"dynamicIconCache\"] = {",
            "    },",
            "    [\"editor_tab_spaces\"] = 4,",
            "    [\"editor_font_size\"] = 12,",
            "    [\"features\"] = {",
            "    },",
            "    [\"login_squelch_time\"] = 10,",
            "    [\"lastArchiveClear\"] = 1731794042,",
            "    [\"minimap\"] = {",
            "        [\"hide\"] = false,",
            "    },",
            "    [\"lastUpgrade\"] = 1731794044,",
            "    [\"dbVersion\"] = 78,",
            "    [\"migrationCutoff\"] = 730,",
            "    [\"registered\"] = {",
            "    },",
            "    [\"displays\"] = {"
        ]
        
        # Read each aura file and add to content
        for aura_file in sorted(source_dir.glob("*.lua")):
            with open(aura_file, 'r', encoding='utf-8') as f:
                aura_content = f.read().strip()
                # Extract aura ID from the file name
                aura_id = aura_file.stem
                # Add the aura to the content
                content.append(f"        [\"{aura_id}\"] = {aura_content[8:-1]},")  # Remove "return {" and "}"
        
        # Close the structure
        content.extend([
            "    },",
            "}"
        ])
        
        # Write to file
        with open(target_path, "w", encoding='utf-8') as f:
            f.write('\n'.join(content))
            
        print(f"\nSuccessfully built WeakAuras.lua")
        print("\nIncluded auras:")
        for aura_file in sorted(source_dir.glob("*.lua")):
            print(f"  - {aura_file.stem}")
            
    except Exception as e:
        print(f"Error: {e}")
        return 1
        
    return 0

if __name__ == "__main__":
    source_dir = Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_AURAS_DIR
    target_path = Path(sys.argv[2]) if len(sys.argv) > 2 else DEFAULT_WEAKAURAS_LUA_PATH
    exit(build_weakauras(source_dir, target_path))
