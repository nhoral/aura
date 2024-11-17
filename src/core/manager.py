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
        self.parser = WeakAurasParser()
    
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
            parsed = self.parser.parse_file(self.weakauras_path)
            displays = parsed.get("displays", {})
            
            for aura_id, aura_data in displays.items():
                # Skip groups (they don't have triggers and are just for organization)
                if aura_data.get("regionType") == "group":
                    continue
                    
                aura = WeakAura.from_lua_table(aura_id, aura_data)
                self.auras[aura_id] = aura
                
        except Exception as e:
            raise ValueError(f"Failed to load WeakAuras.lua: {e}")
    
    def save_to_game(self) -> None:
        """Save auras to WeakAuras.lua"""
        # Create backup before saving
        if self.weakauras_path.exists():
            self.backup_weakauras_file()
        
        output = {
            "displays": {},
            "dbVersion": WEAKAURAS_DB_VERSION,
            "minimap": {"hide": False},
            "editor_theme": "Monokai",
            "editor_font_size": 12,
            "editor_tab_spaces": 4,
            "login_squelch_time": 10,
            "historyCutoff": 730,
            "migrationCutoff": 730,
            "registered": {},
            "features": {},
            "dynamicIconCache": {}
        }
        
        # Convert auras to Lua format
        for aura_id, aura in self.auras.items():
            aura_data = {
                "id": aura.id,
                "regionType": aura.regionType,
                "triggers": aura.triggers,
                "load": aura.load,
                "conditions": aura.conditions,
                "actions": aura.actions,
                "animation": aura.animation,
                # Position
                "xOffset": aura.position.get("xOffset", 0),
                "yOffset": aura.position.get("yOffset", 0),
                "anchorPoint": aura.position.get("anchorPoint", "CENTER"),
                "frameStrata": aura.position.get("frameStrata", 1),
                # Visual
                "color": aura.visual.get("color", [1, 1, 1, 1]),
                "desaturate": aura.visual.get("desaturate", False),
                "alpha": aura.visual.get("alpha", 1),
                # Other required fields
                "uid": aura_id,  # Use aura_id as uid
                "internalVersion": 78,  # Current version
                "authorOptions": {},
                "config": {},
                "subRegions": [
                    {"type": "subbackground"},
                    {"type": "subforeground"}
                ]
            }
            
            output["displays"][aura_id] = aura_data
        
        # Save to file
        lua_content = f"WeakAurasSaved = {self.parser.to_lua_string(output)}\n"
        with self.weakauras_path.open('w', encoding='utf-8') as f:
            f.write(lua_content)
    
    def export_to_yaml(self) -> None:
        """Export all auras to individual YAML files"""
        self.auras_dir.mkdir(exist_ok=True)
        
        for aura_id, aura in self.auras.items():
            # Create clean YAML structure
            aura_data = {
                "id": aura.id,
                "triggers": aura.triggers,  # List of trigger groups
                "regionType": aura.regionType,
                "position": {
                    "xOffset": aura.position.get("xOffset", 0),
                    "yOffset": aura.position.get("yOffset", 0),
                    "anchorPoint": aura.position.get("anchorPoint", "CENTER"),
                    "frameStrata": aura.position.get("frameStrata", 1)
                },
                "visual": {
                    "regionType": aura.regionType,  # Include regionType in visual section
                    "color": aura.visual.get("color", [1, 1, 1, 1]),
                    "desaturate": aura.visual.get("desaturate", False),
                    "alpha": aura.visual.get("alpha", 1),
                    "cooldown": aura.visual.get("cooldown", False),
                    "glow": aura.visual.get("glow", False)
                },
                "parent": aura.parent,
                "load": aura.load,
                "conditions": aura.conditions,
                "actions": aura.actions,
                "animation": aura.animation
            }
            
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
                
                # Ensure triggers are properly structured
                if "triggers" not in aura_data:
                    aura_data["triggers"] = []
                
                # Create WeakAura object
                aura = WeakAura(
                    id=aura_data["id"],
                    triggers=aura_data["triggers"],
                    regionType=aura_data.get("regionType", "icon"),
                    position=aura_data.get("position", {}),
                    visual=aura_data.get("visual", {}),
                    parent=aura_data.get("parent"),
                    load=aura_data.get("load", {}),
                    conditions=aura_data.get("conditions", {}),
                    actions=aura_data.get("actions", {}),
                    animation=aura_data.get("animation", {})
                )
                
                self.auras[aura.id] = aura
                
            except Exception as e:
                print(f"Error loading {yaml_file.name}: {e}")
    
    def validate_trigger_structure(self, triggers: List[Dict]) -> List[str]:
        """Validate the trigger structure matches WeakAuras.lua format"""
        errors = []
        
        for i, trigger_group in enumerate(triggers):
            if not isinstance(trigger_group, dict):
                errors.append(f"Trigger {i}: Not a dictionary")
                continue
                
            if "trigger" not in trigger_group:
                errors.append(f"Trigger {i}: Missing 'trigger' key")
                continue
                
            trigger = trigger_group["trigger"]
            if not isinstance(trigger, dict):
                errors.append(f"Trigger {i}: Trigger value is not a dictionary")
                continue
                
            if "type" not in trigger:
                errors.append(f"Trigger {i}: Missing trigger type")
                
        return errors

    def validate_all(self) -> Dict[str, List[str]]:
        """Validate all auras and return any errors"""
        errors = {}
        for aura_id, aura in self.auras.items():
            # Validate basic aura structure
            aura_errors = aura.validate()
            
            # Validate trigger structure
            trigger_errors = self.validate_trigger_structure(aura.triggers)
            if trigger_errors:
                aura_errors.extend(trigger_errors)
                
            if aura_errors:
                errors[aura_id] = aura_errors
                
        return errors