from slpp import slpp as lua
from typing import Dict, Any
import os

class WeakAurasParser:
    def parse_file(self, filepath: str) -> Dict[str, Any]:
        """Parse WeakAuras.lua file and return dictionary of raw aura data"""
        # Read file and extract the Lua table
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            # Remove the "WeakAurasSaved = " prefix
            lua_table_str = content.replace("WeakAurasSaved = ", "")
            
        # Parse Lua table to Python dict
        try:
            lua_data = lua.decode(lua_table_str)
            return lua_data["displays"]  # Just return the raw auras dict
        except Exception as e:
            raise ValueError(f"Failed to parse Lua table: {e}")

    def save_aura(self, aura_data: Dict[str, Any], output_dir: str):
        """Save a single aura to its own file"""
        aura_id = aura_data.get("id")
        if not aura_id:
            raise ValueError("Aura data missing ID")
            
        # Create output directory if it doesn't exist
        os.makedirs(output_dir, exist_ok=True)
        
        # Convert to Lua and save
        lua_str = lua.encode(aura_data)
        with open(f"{output_dir}/{aura_id}.lua", 'w', encoding='utf-8') as f:
            f.write(f"return {lua_str}")