#!/usr/bin/env python3
import os
import sys
from pathlib import Path
import json

# Add the project root directory to Python path
root_dir = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(root_dir))

from src.core.manager import WeakAuraManager
from src.config import DEFAULT_WEAKAURAS_LUA_PATH, DEFAULT_AURAS_DIR

def main():
    """Build WeakAuras.lua from YAML files"""
    print("WeakAuras Builder")
    print("=================")
    print(f"Source directory: {DEFAULT_AURAS_DIR}")
    print(f"Target file: {DEFAULT_WEAKAURAS_LUA_PATH / 'WeakAuras.lua'}\n")
    
    try:
        manager = WeakAuraManager(
            weakauras_path=DEFAULT_WEAKAURAS_LUA_PATH,
            auras_dir=DEFAULT_AURAS_DIR
        )
        
        # Import from YAML
        manager.import_from_yaml()
        print(f"Loaded {len(manager.auras)} auras")
        
        # Debug: Print the trigger structure for a failing aura
        print("\nDebug - Trigger structure for 'Power 10':")
        power_aura = manager.auras.get("Power 10")
        if power_aura:
            print(json.dumps(power_aura.triggers, indent=2))
            print("\nFull aura data:")
            print(json.dumps({
                "id": power_aura.id,
                "triggers": power_aura.triggers,
                "regionType": power_aura.regionType,
                "position": power_aura.position,
                "visual": power_aura.visual
            }, indent=2))
        
        # Validate
        errors = manager.validate_all()
        if errors:
            print("\nValidation errors found:")
            for aura_id, aura_errors in errors.items():
                print(f"\n{aura_id}:")
                for error in aura_errors:
                    print(f"  - {error}")
            
            if input("\nContinue with build anyway? (y/N): ").lower() != 'y':
                print("\nBuild cancelled.")
                return 1
        
        # Build WeakAuras.lua
        manager.save_to_game()
        print(f"\nSuccessfully built WeakAuras.lua")
        print("\nIncluded auras:")
        for aura_id in sorted(manager.auras.keys()):
            print(f"  - {aura_id}")
            
        print(f"\nBackup created in: {manager.backup_dir}")
            
    except Exception as e:
        print(f"\nError: {e}")
        return 1
        
    return 0

if __name__ == "__main__":
    exit(main())
