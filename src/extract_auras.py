import re
from pathlib import Path

def get_available_auras(content):
    """Get list of all available auras from WeakAuras.lua"""
    # Find the displays section
    displays_start = content.find('["displays"] = {')
    if displays_start == -1:
        return set()
    
    # Get all top-level keys in the displays section
    auras = set()
    brace_count = 0
    in_string = False
    escape_next = False
    current_key = []
    collecting_key = False
    
    for i, char in enumerate(content[displays_start:]):
        if escape_next:
            escape_next = False
            continue
            
        if char == '\\':
            escape_next = True
            continue
            
        if char == '"' and not escape_next:
            in_string = not in_string
            if brace_count == 1:  # We're at the top level
                if in_string:
                    collecting_key = True
                elif collecting_key:
                    key = ''.join(current_key)
                    if key != "displays":  # Skip the displays key itself
                        auras.add(key)
                    current_key = []
                    collecting_key = False
            continue
            
        if collecting_key:
            current_key.append(char)
            continue
            
        if char == '{':
            brace_count += 1
        elif char == '}':
            brace_count -= 1
            if brace_count == 0:  # End of displays section
                break
    
    return auras

def extract_aura_content(content, aura_name):
    """Extract a specific aura's content"""
    # Find the start of the aura
    aura_start = content.find(f'["{aura_name}"] = {{')
    if aura_start == -1:
        return None
        
    # Find the matching closing brace
    brace_count = 0
    in_string = False
    escape_next = False
    
    for i, char in enumerate(content[aura_start:]):
        if escape_next:
            escape_next = False
            continue
            
        if char == '\\':
            escape_next = True
            continue
            
        if char == '"' and not escape_next:
            in_string = not in_string
            continue
            
        if not in_string:
            if char == '{':
                brace_count += 1
            elif char == '}':
                brace_count -= 1
                if brace_count == 0:
                    return content[aura_start:aura_start + i + 1]
    
    return None

def main():
    # Setup paths
    auras_dir = Path(__file__).parent / 'aura_test'
    auras_dir.mkdir(exist_ok=True)
    
    # Read WeakAuras.lua
    wow_path = Path(r'C:\Program Files (x86)\World of Warcraft\_retail_\WTF\Account\YABUCHI\SavedVariables\WeakAuras.lua')
    print(f"Reading from: {wow_path}")
    content = wow_path.read_text(encoding='utf-8')
    
    # Get all available auras
    available_auras = get_available_auras(content)
    print(f"\nFound {len(available_auras)} available auras:")
    for aura in sorted(available_auras):
        print(f"- {aura}")
    
    # Extract each aura
    extracted = 0
    for aura_name in available_auras:
        aura_content = extract_aura_content(content, aura_name)
        if aura_content:
            file_path = auras_dir / f"{aura_name}.lua"
            file_path.write_text(aura_content, encoding='utf-8')
            print(f"Created {file_path.name}")
            extracted += 1
    
    print(f"\nExtracted {extracted} auras")

if __name__ == "__main__":
    main()