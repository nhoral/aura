from pathlib import Path
from typing import Dict, Optional
import json
import shutil
from datetime import datetime

from .parser.lua_parser import LuaParser
from .converter.to_json import convert_to_json
from .converter.to_lua import convert_to_lua
from .models.aura import Aura, AuraTrigger
from .models.weakauras_save import WeakAurasSave
from .core.containers import WeakAurasExport

class AuraManager:
    def __init__(self, wow_path: Optional[str] = None):
        self.wow_path = Path(wow_path) if wow_path else self._find_default_path()
        self.weakauras_path = self.wow_path / 'WTF/Account' / 'SavedVariables/WeakAuras.lua'
        
    def _find_default_path(self) -> Path:
        """Find default WoW installation path."""
        default_path = Path('C:/Program Files (x86)/World of Warcraft/_retail_')
        if default_path.exists():
            return default_path
        raise FileNotFoundError("Could not find WoW installation directory")
        
    def extract_save(self) -> WeakAurasSave:
        """Extract entire WeakAuras save file."""
        parser = LuaParser(self.weakauras_path)
        data = parser.parse()
        
        # Convert raw data into proper models
        displays = {}
        for aura_id, aura_data in data.get('displays', {}).items():
            trigger_data = aura_data.get('trigger', {})
            trigger = AuraTrigger(
                type=trigger_data.get('type', 'aura'),
                event=trigger_data.get('event'),
                spellId=trigger_data.get('spellId'),
                unit=trigger_data.get('unit')
            )
            
            displays[aura_id] = Aura(
                id=aura_id,
                trigger=trigger,
                load=aura_data.get('load', {}),
                # ... convert other fields ...
            )
        
        return WeakAurasSave(
            displays=displays,
            displays_temp=data.get('displays_temp', {}),
            registered=data.get('registered', {}),
            login_message=data.get('login_message', True),
            minimap=data.get('minimap'),
            history=data.get('history')
        )
        
    def save_weakauras(self, export: WeakAurasExport):
        """Save WeakAuras maintaining addon order"""
        # Create backup
        backup_path = self.weakauras_path.with_suffix('.lua.backup')
        shutil.copy2(self.weakauras_path, backup_path)
        
        # Convert to Lua format preserving order
        lua_content = export.to_lua()
        
        # Save to file
        with open(self.weakauras_path, 'w', encoding='utf-8') as f:
            f.write(lua_content)
            
    def export_to_json(self, output_path: str):
        """Export auras to JSON file."""
        auras = self.extract_auras()
        json_data = {
            aura_id: aura.to_json() for aura_id, aura in auras.items()
        }
        
        with open(output_path, 'w', encoding='utf-8') as f:
            json.dump(json_data, f, indent=2)
            
    def import_from_json(self, input_path: str):
        """Import auras from JSON file."""
        with open(input_path, 'r', encoding='utf-8') as f:
            json_data = json.load(f)
            
        auras = {
            aura_id: Aura.from_json(aura_json)
            for aura_id, aura_json in json_data.items()
        }
        
        self.save_auras(auras)