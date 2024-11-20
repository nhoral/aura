from typing import Dict, Any

def convert_to_lua(data: Dict[str, Any]) -> str:
    """Convert Python dictionary back to Lua table format."""
    lua_lines = ['WeakAurasSaved = {']
    
    for key, value in data.items():
        lua_lines.append(f'  ["{key}"] = {_format_lua_value(value)},')
    
    lua_lines.append('}')
    return '\n'.join(lua_lines)

def _format_lua_value(value: Any) -> str:
    """Format Python value as Lua literal."""
    if isinstance(value, bool):
        return str(value).lower()
    elif isinstance(value, (int, float)):
        return str(value)
    elif isinstance(value, str):
        return f'"{value}"'
    elif isinstance(value, dict):
        return _format_lua_table(value)
    elif value is None:
        return 'nil'
    else:
        raise ValueError(f"Unsupported type: {type(value)}")

def _format_lua_table(table: Dict[str, Any]) -> str:
    """Format Python dictionary as Lua table."""
    lines = ['{']
    for k, v in table.items():
        lines.append(f'  ["{k}"] = {_format_lua_value(v)},')
    lines.append('}')
    return '\n'.join(lines)