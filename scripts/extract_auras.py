#!/usr/bin/env python3
import sys
from pathlib import Path

# Add the project root to the Python path
project_root = Path(__file__).parent.parent
sys.path.append(str(project_root))

from src.config import (
    DEFAULT_WEAKAURAS_LUA_PATH,
    DEFAULT_AURAS_DIR
)

def extract_auras(source_path: Path, output_dir: Path) -> None:
    """Extract individual auras from WeakAuras.lua"""
    # Read WeakAuras.lua
    with open(source_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Find the displays table
    displays_start = content.find('["displays"] = {')
    if displays_start == -1:
        raise ValueError("Could not find displays table")
    
    content = content[displays_start:]
    
    # Extract each aura
    current_pos = content.find('{') + 1
    while True:
        # Find next aura start
        aura_start = content.find('[', current_pos)
        if aura_start == -1:
            break
        
        # Extract aura ID
        id_end = content.find(']', aura_start)
        aura_id = content[aura_start+2:id_end-1]  # Remove quotes
        
        # Find aura content
        content_start = content.find('{', id_end)
        content_end = find_matching_brace(content, content_start)
        
        if content_end == -1:
            break
        
        # Get the aura content
        aura_content = content[content_start:content_end+1]
        
        # Remove the parent key
        aura_content = remove_parent_key(aura_content)
        
        # Pretty-print the aura content
        pretty_aura_content = pretty_print_lua(aura_content)
        
        # Save to file
        output_dir.mkdir(exist_ok=True)
        with open(output_dir / f"{aura_id}.lua", 'w', encoding='utf-8') as f:
            f.write("return {\n")
            f.write(pretty_aura_content)
            f.write("\n}")
        
        current_pos = content_end

def find_matching_brace(content: str, start: int = 0) -> int:
    """Find the matching closing brace for the first opening brace"""
    brace_count = 0
    in_string = False
    string_char = None
    
    for i, char in enumerate(content[start:], start):
        if char in ['"', "'"] and (i == 0 or content[i-1] != '\\'):
            if not in_string:
                in_string = True
                string_char = char
            elif char == string_char:
                in_string = False
                string_char = None
        
        if not in_string:
            if char == '{':
                brace_count += 1
            elif char == '}':
                brace_count -= 1
                if brace_count == 0:
                    return i
    
    return -1

def remove_parent_key(content: str) -> str:
    """Remove the parent key from the Lua content"""
    lines = content.splitlines()
    result = []
    in_string = False
    string_char = None
    
    for line in lines:
        stripped_line = line.strip()
        
        # Check if the line contains the parent key
        if not in_string and stripped_line.startswith('["parent"]'):
            continue
        
        # Handle string state
        for char in stripped_line:
            if char in ['"', "'"] and (len(result) == 0 or result[-1][-1] != '\\'):
                if not in_string:
                    in_string = True
                    string_char = char
                elif char == string_char:
                    in_string = False
                    string_char = None
        
        result.append(line)
    
    return '\n'.join(result)

def pretty_print_lua(content: str, indent: int = 4) -> str:
    """Pretty-print Lua content with consistent indentation"""
    result = []
    current_indent = 0
    in_string = False
    string_char = None
    
    for line in content.splitlines():
        stripped_line = line.strip()
        
        if not stripped_line:
            continue
        
        if not in_string:
            if stripped_line.startswith('}'):
                current_indent -= indent
        
        result.append(' ' * current_indent + stripped_line)
        
        if not in_string:
            if stripped_line.endswith('{'):
                current_indent += indent
        
        # Handle string state
        for char in stripped_line:
            if char in ['"', "'"] and (len(result[-1]) == 0 or result[-1][-1] != '\\'):
                if not in_string:
                    in_string = True
                    string_char = char
                elif char == string_char:
                    in_string = False
                    string_char = None
    
    return '\n'.join(result)

if __name__ == "__main__":
    # Use DEFAULT_WEAKAURAS_LUA_PATH directly
    source_path = Path(sys.argv[1]) if len(sys.argv) > 1 else DEFAULT_WEAKAURAS_LUA_PATH
    output_dir = Path(sys.argv[2]) if len(sys.argv) > 2 else DEFAULT_AURAS_DIR
    
    print(f"Loading WeakAuras from: {source_path}")
    print(f"Saving to: {output_dir}")
    
    try:
        extract_auras(source_path, output_dir)
    except Exception as e:
        print(f"Error: {e}")
        sys.exit(1)