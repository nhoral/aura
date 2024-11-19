from typing import Dict, Any
from pathlib import Path

class WeakAurasParser:
    def parse_file(self, filepath: str) -> Dict[str, Any]:
        """Parse WeakAuras.lua file and extract auras dictionary"""
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        # Find the displays table
        displays_start = content.find('["displays"] = {')
        if displays_start == -1:
            raise ValueError("Could not find displays table")
        
        # Extract displays section
        content = content[displays_start:]
        displays_end = self._find_matching_brace(content)
        if displays_end == -1:
            raise ValueError("Could not find end of displays table")
            
        displays_content = content[:displays_end]
        
        # Parse into dictionary of aura_id -> aura_content
        auras = {}
        current_pos = displays_content.find('{') + 1
        
        while True:
            # Find next aura start
            aura_start = displays_content.find('[', current_pos)
            if aura_start == -1:
                break
                
            # Extract aura ID
            id_end = displays_content.find(']', aura_start)
            aura_id = displays_content[aura_start+2:id_end-1]  # Remove quotes
            
            # Find aura content
            content_start = displays_content.find('{', id_end)
            content_end = self._find_matching_brace(displays_content, content_start)
            
            if content_end == -1:
                break
                
            # Store aura content
            aura_content = displays_content[content_start:content_end]
            auras[aura_id] = aura_content
            
            current_pos = content_end
            
        return auras

    def _find_matching_brace(self, content: str, start: int = 0) -> int:
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
                        return i + 1
        
        return -1

    def save_aura(self, aura_data: str, output_dir: str):
        """Save a single aura to its own file, preserving exact format"""
        # Extract aura ID from the content
        id_start = aura_data.find('["id"] = "') + 9
        id_end = aura_data.find('"', id_start)
        if id_start == -1 or id_end == -1:
            raise ValueError("Could not find aura ID")
            
        aura_id = aura_data[id_start:id_end]
        
        # Create output directory if it doesn't exist
        output_path = Path(output_dir)
        output_path.mkdir(parents=True, exist_ok=True)
        
        # Save with exact formatting preserved
        with open(output_path / f"{aura_id}.lua", 'w', encoding='utf-8') as f:
            f.write("return {\n")
            f.write(aura_data)
            f.write("\n}")