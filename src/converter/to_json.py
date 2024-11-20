from typing import Dict, Any
import json

def convert_to_json(lua_data: Dict[str, Any]) -> str:
    """Convert parsed Lua data to JSON format."""
    return json.dumps(lua_data, indent=2)