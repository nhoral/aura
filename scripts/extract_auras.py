#!/usr/bin/env python3
import sys
from pathlib import Path

# Add the project root to the Python path
project_root = Path(__file__).parent.parent
sys.path.append(str(project_root))

from src.core.manager import WeakAuraManager
from src.config import DEFAULT_WEAKAURAS_LUA_PATH, DEFAULT_AURAS_DIR

def main():
    """Extract WeakAuras from WoW to YAML files"""
    print(f"Loading WeakAuras from: {DEFAULT_WEAKAURAS_LUA_PATH}")
    print(f"Saving to: {DEFAULT_AURAS_DIR}")
    
    try:
        manager = WeakAuraManager(
            weakauras_path=DEFAULT_WEAKAURAS_LUA_PATH,
            auras_dir=DEFAULT_AURAS_DIR
        )
        
        # Load auras from WoW
        manager.load_from_game()
        print(f"Loaded {len(manager.auras)} auras")
        
        # Export to YAML
        manager.export_to_yaml()
        print(f"\nSuccessfully exported auras to {DEFAULT_AURAS_DIR}/")
        print("\nExported auras:")
        for aura_id in sorted(manager.auras.keys()):
            print(f"  - {aura_id}")
            
    except Exception as e:
        print(f"Error: {e}")
        return 1
        
    return 0

if __name__ == "__main__":
    exit(main())
