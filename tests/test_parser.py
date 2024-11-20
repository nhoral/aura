import pytest
from pathlib import Path
from src.parser.lua_parser import LuaParser
from src.core.containers import WeakAurasExport
from slpp import slpp
import re
import json

def test_parse_and_validate_structure():
    # Setup paths
    test_dir = Path(__file__).parent
    fixture_path = test_dir / 'fixtures' / 'small' / 'WeakAuras.lua'
    output_dir = test_dir / 'output'
    output_path = output_dir / 'WeakAuras.lua'
    
    # Create output directory if it doesn't exist
    output_dir.mkdir(exist_ok=True)
    
    # Read fixture
    with open(fixture_path, 'r', encoding='utf-8') as f:
        original_content = f.read()
    
    # Parse and generate new content
    parser = LuaParser(fixture_path)
    export = parser.parse()
    
    # Debug print
    print("\nParsed addon order:", export.addon_order)
    print("\nParsed addons keys:", list(export.addons.keys()))
    
    generated_content = export.to_lua()
    
    # Write generated content to output file
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(generated_content)
    
    # Write a debug file with just the WeakAurasSaved table
    if 'WeakAurasSaved' in export.addons:
        debug_path = output_dir / 'WeakAurasSaved_debug.lua'
        with open(debug_path, 'w', encoding='utf-8') as f:
            f.write("WeakAurasSaved = ")
            f.write(slpp.encode(export.addons['WeakAurasSaved']))
    
    # Structural validation
    assert 'WeakAurasSaved' in export.addon_order, "WeakAurasSaved should be present"
    
    weakauras_saved = export.addons['WeakAurasSaved']
    assert isinstance(weakauras_saved, dict), "WeakAurasSaved should be a dictionary"
    
    # Validate specific structures we know should exist
    assert 'displays' in weakauras_saved, "displays should exist in WeakAurasSaved"
    displays = weakauras_saved['displays']
    assert isinstance(displays, dict), "displays should be a dictionary"
    
    # If we know specific auras should exist, validate them
    for aura_name, aura_data in displays.items():
        assert isinstance(aura_data, dict), f"Aura {aura_name} should be a dictionary"
        assert 'triggers' in aura_data, f"Aura {aura_name} should have triggers"

def test_parser_basic():
    lua_content = """
    WeakAurasSaved = {
        ["Test Aura"] = {
            trigger = {
                type = "aura",
                spellId = 12345,
            },
        },
    }
    """
    # Add your test implementation

def test_parser_invalid_file():
    with pytest.raises(FileNotFoundError):
        parser = LuaParser("nonexistent.lua")
        parser.parse()

def test_exact_aura_matching():
    fixture_path = Path(__file__).parent / 'fixtures' / 'small' / 'WeakAuras.lua'
    output_path = Path(__file__).parent / 'output' / 'WeakAuras.lua'
    
    parser = LuaParser(fixture_path)
    export = parser.parse()
    
    # Write output
    output_path.parent.mkdir(exist_ok=True)
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(export.to_lua())
    
    wa = export.addons['WeakAurasSaved']
    displays = wa['displays']
    
    # Extract original order
    with open(fixture_path, 'r', encoding='utf-8') as f:
        content = f.read()
        display_order = [m.group(1) for m in re.finditer(r'\["([^"]+)"\]\s*=\s*{', content)]
    
    test_info = {
        "validation": {
            "original_displays": display_order,
            "generated_displays": list(displays.keys()),
            "structure_checks": {
                "has_displays": "displays" in wa,
                "display_count": len(displays),
                "required_fields_present": all(
                    all(field in display for field in ['triggers', 'internalVersion', 'regionType'])
                    for display in displays.values()
                )
            }
        }
    }
    
    print("\nTEST_DEBUG:", json.dumps(test_info, indent=2))
    
    # Rest of validations...