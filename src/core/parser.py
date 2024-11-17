# src/core/parser.py
from typing import Dict, Any
import slpp
from pathlib import Path

class WeakAurasParser:
    @staticmethod
    def parse_file(file_path: Path) -> Dict[str, Any]:
        """Parse WeakAuras.lua file into Python dictionary"""
        lua_content = file_path.read_text(encoding='utf-8')
        # Remove 'WeakAurasSaved = ' prefix
        lua_table_str = lua_content.replace('WeakAurasSaved = ', '', 1)
        
        try:
            parser = slpp.SLPP()
            return parser.decode(lua_table_str)
        except Exception as e:
            raise ValueError(f"Failed to parse WeakAuras.lua: {e}")
    
    @staticmethod
    def to_lua_string(data: Dict[str, Any]) -> str:
        """Convert Python dictionary to WeakAuras.lua format"""
        parser = slpp.SLPP()
        return f"WeakAurasSaved = {parser.encode(data)}"