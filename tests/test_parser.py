# tests/test_parser.py
import pytest
from pathlib import Path
from src.core.parser import WeakAurasParser

@pytest.fixture
def complex_weakauras_file(tmp_path) -> Path:
    """Create a sample WeakAuras.lua file with complex auras"""
    content = """WeakAurasSaved = {
        ["displays"] = {
            ["Combat"] = {
                ["iconSource"] = 0,
                ["parent"] = "Power, Health and Enemy Details",
                ["yOffset"] = -165.6,
                ["anchorPoint"] = "CENTER",
                ["cooldownSwipe"] = false,
                ["triggers"] = {
                    {
                        ["trigger"] = {
                            ["useRem"] = false,
                            ["use_incombat"] = true,
                            ["auranames"] = {
                                "Demon Skin",
                            },
                            ["event"] = "Conditions",
                            ["unit"] = "player",
                            ["type"] = "unit",
                            ["debuffType"] = "BOTH",
                        },
                        ["untrigger"] = {
                        },
                    },
                    ["activeTriggerMode"] = -10,
                },
                ["internalVersion"] = 78,
                ["load"] = {
                    ["class"] = {
                        ["single"] = "DRUID",
                        ["multi"] = {
                            ["DRUID"] = true,
                        },
                    },
                },
                ["id"] = "Combat",
            },
            ["Party 4 Is Hurt"] = {
                ["triggers"] = {
                    {
                        ["trigger"] = {
                            ["type"] = "custom",
                            ["custom_type"] = "stateupdate",
                            ["custom"] = "function(allstates)\\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\\n        aura_env.last = GetTime()\\n        local hp,hpMax = UnitHealth(\\"party4\\"),UnitHealthMax(\\"party4\\")\\n        if (math.ceil((hp / hpMax) * 100) <= 60) then\\n            allstates[\\"\\" ] = {show = true}\\n            return true\\n        end\\n    end\\nend",
                            ["events"] = "UNIT_HEALTH",
                        },
                    },
                },
                ["id"] = "Party 4 Is Hurt",
            },
            ["Power 70"] = {
                ["iconSource"] = 0,
                ["parent"] = "Power, Health and Enemy Details",
                ["triggers"] = {
                    {
                        ["trigger"] = {
                            ["type"] = "unit",
                            ["event"] = "Power",
                            ["unit"] = "player",
                        },
                    },
                },
                ["subRegions"] = {
                    {
                        ["type"] = "subbackground",
                    },
                    {
                        ["glowFrequency"] = 0.25,
                        ["type"] = "subglow",
                        ["useGlowColor"] = false,
                        ["glowType"] = "buttonOverlay",
                        ["glowColor"] = {1, 1, 1, 1},
                    },
                },
                ["load"] = {
                    ["class"] = {
                        ["single"] = "WARRIOR",
                        ["multi"] = {
                            ["WARRIOR"] = true,
                            ["ROGUE"] = true,
                        },
                    },
                },
                ["id"] = "Power 70",
            }
        }
    }"""
    
    file_path = tmp_path / "WeakAuras.lua"
    file_path.write_text(content)
    return file_path

def test_parse_custom_trigger(complex_weakauras_file):
    """Test parsing of custom Lua trigger code"""
    parsed = WeakAurasParser.parse_file(complex_weakauras_file)
    aura = parsed["displays"]["Party 4 Is Hurt"]
    
    # Verify custom trigger exists and contains function code
    assert aura["triggers"][0]["trigger"]["type"] == "custom"
    assert "function(allstates)" in aura["triggers"][0]["trigger"]["custom"]

def test_parse_multi_class_load(complex_weakauras_file):
    """Test parsing of multiple class specifications"""
    parsed = WeakAurasParser.parse_file(complex_weakauras_file)
    aura = parsed["displays"]["Power 70"]
    
    # Verify multiple classes in load conditions
    assert aura["load"]["class"]["single"] == "WARRIOR"
    assert "WARRIOR" in aura["load"]["class"]["multi"]
    assert "ROGUE" in aura["load"]["class"]["multi"]

def test_parse_nested_subregions(complex_weakauras_file):
    """Test parsing of nested subregion configurations"""
    parsed = WeakAurasParser.parse_file(complex_weakauras_file)
    aura = parsed["displays"]["Power 70"]
    
    # Verify subregions structure
    assert len(aura["subRegions"]) == 2
    assert aura["subRegions"][0]["type"] == "subbackground"
    assert aura["subRegions"][1]["type"] == "subglow"
    assert aura["subRegions"][1]["glowFrequency"] == 0.25

def test_parse_array_in_trigger(complex_weakauras_file):
    """Test parsing of array values in triggers"""
    parsed = WeakAurasParser.parse_file(complex_weakauras_file)
    aura = parsed["displays"]["Combat"]
    
    # Verify auranames array
    assert "Demon Skin" in aura["triggers"][0]["trigger"]["auranames"]

def test_roundtrip_complex_aura(complex_weakauras_file):
    """Test that complex auras survive a parse/serialize roundtrip"""
    # Parse original file
    parsed = WeakAurasParser.parse_file(complex_weakauras_file)
    
    # Convert back to Lua
    lua_string = WeakAurasParser.to_lua_string(parsed)
    
    # Write to new file
    new_file = Path("roundtrip_test.lua")
    new_file.write_text(lua_string)
    
    # Parse new file and compare
    reparsed = WeakAurasParser.parse_file(new_file)
    
    # Compare specific complex structures
    assert parsed["displays"]["Party 4 Is Hurt"]["triggers"][0]["trigger"]["custom"] == \
           reparsed["displays"]["Party 4 Is Hurt"]["triggers"][0]["trigger"]["custom"]
    
    assert parsed["displays"]["Power 70"]["subRegions"] == \
           reparsed["displays"]["Power 70"]["subRegions"]
    
    # Clean up
    new_file.unlink()