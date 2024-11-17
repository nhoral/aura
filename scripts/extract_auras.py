#!/usr/bin/env python3
import sys
from pathlib import Path

# Add the project root to the Python path
project_root = Path(__file__).parent.parent
sys.path.append(str(project_root))

from src.core.manager import WeakAuraManager
from src.core.parser import WeakAurasParser
from src.config import DEFAULT_WEAKAURAS_LUA_PATH, DEFAULT_AURAS_DIR, DEFAULT_BACKUP_DIR

def main():
    """Extract WeakAuras from WoW to YAML files"""
    print(f"Loading WeakAuras from: {DEFAULT_WEAKAURAS_LUA_PATH}")
    print(f"Saving to: {DEFAULT_AURAS_DIR}")
    
    try:
        # Initialize manager
        manager = WeakAuraManager(
            weakauras_path=DEFAULT_WEAKAURAS_LUA_PATH,
            auras_dir=DEFAULT_AURAS_DIR,
            backup_dir=DEFAULT_BACKUP_DIR
        )
        
        # Create backup of current WeakAuras.lua
        manager.backup_weakauras_file()
        print("Created backup of WeakAuras.lua")
        
        # Parse all displays to count groups vs auras
        parsed = WeakAurasParser.parse_file(manager.weakauras_path)
        displays = parsed.get("displays", {})
        
        groups = [aura_id for aura_id, data in displays.items() 
                 if data.get("regionType") == "group"]
        
        # Load non-group auras
        manager.load_from_game()
        print(f"\nFound {len(displays)} total displays:")
        print(f"  - {len(manager.auras)} auras")
        print(f"  - {len(groups)} groups (skipped)")
        
        if groups:
            print("\nSkipped groups:")
            for group in sorted(groups):
                print(f"  - {group}")
        
        # Validate auras
        errors = manager.validate_all()
        if errors:
            print("\nValidation errors found:")
            for aura_id, aura_errors in errors.items():
                print(f"\n{aura_id}:")
                for error in aura_errors:
                    print(f"  - {error}")
            return 1
        
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
