from pathlib import Path
from typing import Dict, Any, Union
import yaml

class WeakAurasParser:
    @staticmethod
    def parse_file(file_path: Path) -> Dict[str, Any]:
        """Parse a WeakAuras.lua file into a Python dictionary"""
        if not file_path.exists():
            raise FileNotFoundError(f"File not found: {file_path}")
            
        content = file_path.read_text()
        
        # Remove Lua variable assignment
        content = content.replace("WeakAurasSaved = ", "")
        
        return WeakAurasParser._parse_lua_table(content)
    
    @staticmethod
    def _parse_lua_table(content: str) -> Union[Dict, list, str, int, float, bool]:
        """Parse a Lua table string into Python objects suitable for YAML"""
        content = content.strip()
        
        if not content.startswith("{"):
            # Handle basic types
            if content == "true":
                return True
            elif content == "false":
                return False
            elif content == "nil":
                return None
            try:
                return int(content)
            except ValueError:
                try:
                    return float(content)
                except ValueError:
                    # Remove quotes if present
                    return content.strip('"\'')
        
        # Remove outer braces
        content = content[1:-1].strip()
        
        # Handle empty table
        if not content:
            return {}
        
        result = {}
        current_key = None
        value_start = 0
        brace_count = 0
        in_string = False
        string_char = None
        is_array = True  # Track if this is an array-like table
        
        i = 0
        while i < len(content):
            char = content[i]
            
            # Handle strings
            if char in '"\'':
                if not in_string:
                    in_string = True
                    string_char = char
                elif char == string_char and content[i-1] != '\\':
                    in_string = False
                    
            # Skip processing if in string
            if in_string:
                i += 1
                continue
                
            # Count braces
            if char == '{':
                brace_count += 1
            elif char == '}':
                brace_count -= 1
                
            # Handle key-value separator
            elif char == '=' and brace_count == 0:
                if current_key is None:
                    key_str = content[value_start:i].strip()
                    # If we see a non-numeric key, it's not an array
                    if not (key_str.startswith('[') and key_str[1:-1].strip().isdigit()):
                        is_array = False
                    # Handle different key formats
                    if key_str.startswith('[') and key_str.endswith(']'):
                        key_str = key_str[1:-1].strip()
                    current_key = WeakAurasParser._parse_lua_table(key_str) if key_str.startswith('{') else key_str.strip('"\'')
                    value_start = i + 1
                    
            # Handle value separator
            elif char == ',' and brace_count == 0:
                if current_key is not None:
                    value = content[value_start:i].strip()
                    result[current_key] = WeakAurasParser._parse_lua_table(value)
                    current_key = None
                else:
                    value = content[value_start:i].strip()
                    if value:
                        result[len(result)] = WeakAurasParser._parse_lua_table(value)
                        is_array = True  # If we're adding numeric keys sequentially, it's an array
                value_start = i + 1
                
            i += 1
            
        # Handle last value
        if value_start < len(content):
            value = content[value_start:].strip()
            if current_key is not None:
                result[current_key] = WeakAurasParser._parse_lua_table(value)
            elif value:
                result[len(result)] = WeakAurasParser._parse_lua_table(value)
                is_array = True
        
        # Convert to list if it's an array-like table
        if is_array and all(isinstance(k, (int, str)) and str(k).isdigit() for k in result.keys()):
            # Convert to list and ensure proper ordering
            max_index = max(int(k) for k in result.keys())
            return [result.get(str(i)) or result.get(i) for i in range(max_index + 1)]
        
        return result

    @staticmethod
    def to_yaml_string(data: Dict[str, Any]) -> str:
        """Convert Python dictionary to YAML format"""
        return yaml.dump(data, default_flow_style=False, sort_keys=False)

    @staticmethod
    def from_yaml_string(yaml_str: str) -> Dict[str, Any]:
        """Convert YAML string back to Python dictionary"""
        return yaml.safe_load(yaml_str)

    @staticmethod
    def to_lua_string(data: Dict[str, Any]) -> str:
        """Convert Python dictionary back to Lua table format"""
        def _to_lua_value(value: Any, indent: int = 0) -> str:
            if isinstance(value, dict):
                return "{\n" + ",\n".join(
                    f"{' ' * (indent + 2)}[{repr(k)}] = {_to_lua_value(v, indent + 2)}"
                    for k, v in value.items()
                ) + f"\n{' ' * indent}}}"
            elif isinstance(value, (list, tuple)):
                return "{\n" + ",\n".join(
                    f"{' ' * (indent + 2)}{_to_lua_value(v, indent + 2)}"
                    for v in value
                ) + f"\n{' ' * indent}}}"
            elif isinstance(value, bool):
                return str(value).lower()
            elif value is None:
                return "nil"
            elif isinstance(value, (int, float)):
                return str(value)
            else:
                return f'"{str(value)}"'
        
        return f"WeakAurasSaved = {_to_lua_value(data)}"