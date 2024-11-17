# src/core/manager.py
from pathlib import Path
from typing import Dict, List
import yaml
import shutil
from datetime import datetime
from ..models.weak_aura import WeakAura
from ..config import (
    DEFAULT_WEAKAURAS_LUA_PATH,
    DEFAULT_AURAS_DIR,
    DEFAULT_BACKUP_DIR,
    WEAKAURAS_FILE,
    WEAKAURAS_DB_VERSION,
    BACKUP_FILE_PATTERN
)
from .parser import WeakAurasParser

class WeakAuraManager:
    def __init__(self, 
                 weakauras_path: Path = DEFAULT_WEAKAURAS_LUA_PATH,
                 auras_dir: Path = DEFAULT_AURAS_DIR,
                 backup_dir: Path = DEFAULT_BACKUP_DIR):
        self.weakauras_path = weakauras_path / WEAKAURAS_FILE
        self.auras_dir = auras_dir
        self.backup_dir = backup_dir
        self.auras: Dict[str, WeakAura] = {}
    
    def backup_weakauras_file(self) -> None:
        """Create a backup of the WeakAuras.lua file"""
        self.backup_dir.mkdir(exist_ok=True)
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        backup_path = self.backup_dir / BACKUP_FILE_PATTERN.format(timestamp=timestamp)
        
        if self.weakauras_path.exists():
            shutil.copy2(self.weakauras_path, backup_path)
    
    def load_from_game(self) -> None:
        """Load auras from WeakAuras.lua"""
        if not self.weakauras_path.exists():
            raise FileNotFoundError(f"WeakAuras.lua not found at {self.weakauras_path}")
            
        try:
            parsed = WeakAurasParser.parse_file(self.weakauras_path)
            displays = parsed.get("displays", {})
            
            for aura_id, aura_data in displays.items():
                aura = WeakAura.from_lua_table(aura_id, aura_data)
                self.auras[aura_id] = aura
                
        except Exception as e:
            raise ValueError(f"Failed to load WeakAuras.lua: {e}")
    
    def save_to_game(self) -> None:
        """Save auras to WeakAuras.lua"""
        # Create directory if it doesn't exist
        self.weakauras_path.parent.mkdir(parents=True, exist_ok=True)
        
        # Create backup if file exists
        if self.weakauras_path.exists():
            self.backup_weakauras_file()
        
        displays = {
            aura_id: aura.to_lua_table() 
            for aura_id, aura in self.auras.items()
        }
        
        data = {
            "displays": displays,
            "dbVersion": WEAKAURAS_DB_VERSION,
            "minimap": {"hide": False},
            "login_squelch_time": 10,
            "editor_tab_spaces": 4
        }
        
        lua_content = WeakAurasParser.to_lua_string(data)
        self.weakauras_path.write_text(lua_content, encoding='utf-8')
    
    def export_to_yaml(self) -> None:
        """Export all auras to individual YAML files"""
        self.auras_dir.mkdir(exist_ok=True)
        
        for aura_id, aura in self.auras.items():
            # Create clean YAML structure
            aura_data = {
                "id": aura.id,
                "triggers": aura.triggers,
                "load": aura.load.to_dict() if hasattr(aura, 'load') else {},
                "conditions": aura.conditions,
                "actions": aura.actions,
                "animation": aura.animation,
                "visual": {
                    "regionType": aura.regionType,
                    "color": aura.visual.get("color", [1, 1, 1, 1]),
                    "desaturate": aura.visual.get("desaturate", False),
                    "alpha": aura.visual.get("alpha", 1),
                    "cooldown": aura.visual.get("cooldown", False),
                    "glow": aura.visual.get("glow", False),
                },
                "position": {
                    "xOffset": aura.position.get("xOffset", 0),
                    "yOffset": aura.position.get("yOffset", 0),
                    "anchorPoint": aura.position.get("anchorPoint", "CENTER"),
                    "frameStrata": aura.position.get("frameStrata", 1),
                }
            }
            
            # Add parent if it exists
            if hasattr(aura, 'parent') and aura.parent:
                aura_data["parent"] = aura.parent
            
            # Clean up None values
            aura_data = self._clean_dict(aura_data)
            
            # Save to YAML file
            yaml_path = self.auras_dir / f"{aura_id}.yaml"
            with yaml_path.open('w', encoding='utf-8') as f:
                yaml.safe_dump(aura_data, f, sort_keys=False, indent=2, allow_unicode=True)
    
    def _clean_dict(self, d: Dict) -> Dict:
        """Remove None values and empty dicts/lists from dictionary"""
        if not isinstance(d, dict):
            return d
            
        return {
            k: self._clean_dict(v)
            for k, v in d.items()
            if v is not None and v != {} and v != []
        }
    
    def import_from_yaml(self) -> None:
        """Import all auras from YAML files"""
        if not self.auras_dir.exists():
            raise FileNotFoundError(f"Auras directory not found: {self.auras_dir}")
        
        self.auras.clear()
        
        for yaml_file in self.auras_dir.glob("*.yaml"):
            try:
                with yaml_file.open('r', encoding='utf-8') as f:
                    aura_data = yaml.safe_load(f)
                    
                # Reconstruct full aura data
                full_data = {}
                
                # Add basic fields
                full_data["id"] = aura_data["id"]
                full_data["triggers"] = aura_data["triggers"]
                
                # Add visual properties
                if "visual" in aura_data:
                    full_data.update(aura_data["visual"])
                    
                # Add position properties
                if "position" in aura_data:
                    full_data.update(aura_data["position"])
                    
                # Add other sections
                for key in ["load", "conditions", "actions", "animation", "parent"]:
                    if key in aura_data:
                        full_data[key] = aura_data[key]
                
                # Create WeakAura object
                aura = WeakAura.from_lua_table(aura_data["id"], full_data)
                self.auras[aura.id] = aura
                
            except Exception as e:
                print(f"Error loading {yaml_file.name}: {e}")
    
    def validate_all(self) -> Dict[str, List[str]]:
        """Validate all auras and return any errors"""
        errors = {}
        for aura_id, aura in self.auras.items():
            aura_errors = aura.validate()
            if aura_errors:
                errors[aura_id] = aura_errors
        return errors