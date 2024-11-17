#!/usr/bin/env python3
import sys
from pathlib import Path

# Add the project root to the Python path
project_root = Path(__file__).parent.parent
sys.path.append(str(project_root))

from src.core.manager import WeakAuraManager
from src.config import (
    DEFAULT_WEAKAURAS_LUA_PATH,
    DEFAULT_AURAS_DIR,
    DEFAULT_BACKUP_DIR,
    WEAKAURAS_DB_VERSION
)

def build_weakauras(source_dir: Path = DEFAULT_AURAS_DIR,
                   target_path: Path = DEFAULT_WEAKAURAS_LUA_PATH) -> int:
    """Build WeakAuras.lua from YAML files"""
    print(f"Loading auras from: {source_dir}")
    print(f"Building WeakAuras.lua at: {target_path}")
    
    try:
        # Initialize manager
        manager = WeakAuraManager(
            weakauras_path=target_path,
            auras_dir=source_dir,
            backup_dir=DEFAULT_BACKUP_DIR
        )
        
        # Create backup of current WeakAuras.lua if it exists
        if target_path.exists():
            manager.backup_weakauras_file()
            print("Created backup of existing WeakAuras.lua")
        
        # Import from YAML files
        manager.import_from_yaml()
        print(f"Loaded {len(manager.auras)} auras")
        
        # Validate auras
        errors = manager.validate_all()
        if errors:
            print("\nValidation errors found:")
            for aura_id, aura_errors in errors.items():
                print(f"\n{aura_id}:")
                for error in aura_errors:
                    print(f"  - {error}")
            return 1
        
        # Save to WeakAuras.lua
        manager.save_to_game()
        print(f"\nSuccessfully built WeakAuras.lua")
        print("\nIncluded auras:")
        for aura_id in sorted(manager.auras.keys()):
            print(f"  - {aura_id}")
            
    except Exception as e:
        print(f"Error: {e}")
        return 1
        
    return 0

if __name__ == "__main__":
    source_dir = Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_AURAS_DIR
    target_path = Path(sys.argv[2]) if len(sys.argv) > 2 else DEFAULT_WEAKAURAS_LUA_PATH
    exit(build_weakauras(source_dir, target_path))
