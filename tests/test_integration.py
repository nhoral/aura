import os
import json
from src.models.weak_aura import WeakAura
import pytest
from pathlib import Path
from src.core.manager import WeakAuraManager
from src.config import WEAKAURAS_FILE

def test_aura_roundtrip():
    """Test that we can parse WeakAuras.lua into files and rebuild it"""
    
    # Test aura definition matching WeakAuras.lua format
    test_aura = {
        "id": "Test Aura",
        "triggers": [{
            "trigger": {
                "type": "unit",
                "event": "Health",
                "unit": "player"
            },
            "untrigger": {}
        }],
        "regionType": "icon",
        "position": {
            "xOffset": 0,
            "yOffset": 0,
            "anchorPoint": "CENTER"
        }
    }

    # Write test aura to file
    aura_dir = "auras"
    os.makedirs(aura_dir, exist_ok=True)
    with open(os.path.join(aura_dir, "test_aura.json"), "w") as f:
        json.dump(test_aura, f, indent=2)

    # Load and validate the aura
    with open(os.path.join(aura_dir, "test_aura.json")) as f:
        loaded_aura = WeakAura.from_dict(json.load(f))
    
    assert len(loaded_aura.validate()) == 0

    # Convert back to dict and verify structure
    aura_dict = loaded_aura.to_dict()
    assert aura_dict["triggers"][0]["trigger"]["type"] == "unit"
    assert "0" not in aura_dict["triggers"][0]["trigger"]

    # Clean up test file
    os.remove(os.path.join(aura_dir, "test_aura.json"))

@pytest.fixture
def sample_weakauras_lua():
    """A realistic WeakAuras.lua sample with multiple auras"""
    return """WeakAurasSaved = {
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
                        ["type"] = "unit",
                        ["use_incombat"] = true,
                        ["event"] = "Conditions",
                        ["unit"] = "player",
                        ["debuffType"] = "BOTH"
                    },
                    ["untrigger"] = {
                    }
                },
                ["activeTriggerMode"] = -10
            },
            ["internalVersion"] = 78,
            ["keepAspectRatio"] = false,
            ["selfPoint"] = "CENTER",
            ["desaturate"] = false,
            ["id"] = "Combat",
            ["regionType"] = "icon",
            ["xOffset"] = 585.13,
            ["frameStrata"] = 1,
            ["width"] = 30,
            ["color"] = {1, 1, 1, 1},
            ["uid"] = "CrtyJoBAnr7",
            ["inverse"] = false,
            ["alpha"] = 1,
            ["conditions"] = {},
            ["cooldown"] = false,
            ["icon"] = true
        },
        ["Enemy Range 20"] = {
            ["iconSource"] = -1,
            ["parent"] = "Power, Health and Enemy Details",
            ["yOffset"] = -165.63,
            ["anchorPoint"] = "CENTER",
            ["cooldownSwipe"] = true,
            ["triggers"] = {
                {
                    ["trigger"] = {
                        ["type"] = "unit",
                        ["subeventSuffix"] = "_CAST_START",
                        ["event"] = "Range Check",
                        ["unit"] = "target",
                        ["range"] = "20",
                        ["use_range"] = true,
                        ["range_operator"] = "<=",
                        ["debuffType"] = "HELPFUL"
                    },
                    ["untrigger"] = {
                    }
                },
                ["activeTriggerMode"] = -10
            },
            ["desaturate"] = false,
            ["id"] = "Enemy Range 20",
            ["regionType"] = "icon",
            ["xOffset"] = 435.49,
            ["frameStrata"] = 1,
            ["width"] = 30,
            ["color"] = {1, 1, 1, 1},
            ["uid"] = "y9SKOBfsVYr",
            ["inverse"] = false,
            ["alpha"] = 1,
            ["conditions"] = {},
            ["cooldown"] = true,
            ["icon"] = true
        }
    },
    ["dbVersion"] = 78,
    ["minimap"] = {
        ["hide"] = false
    },
    ["login_squelch_time"] = 10,
    ["editor_tab_spaces"] = 4
}"""

def test_full_roundtrip(tmp_path, sample_weakauras_lua):
    """Test full roundtrip: WeakAuras.lua -> YAML -> WeakAuras.lua"""
    # Set up directories
    weakauras_path = tmp_path / "SavedVariables"
    auras_dir = tmp_path / "auras"
    backup_dir = tmp_path / "backups"
    
    weakauras_path.mkdir(parents=True)
    auras_dir.mkdir()
    backup_dir.mkdir()
    
    # Create initial WeakAuras.lua
    weakauras_file = weakauras_path / WEAKAURAS_FILE
    weakauras_file.write_text(sample_weakauras_lua)
    
    # Create manager and extract to YAML
    manager = WeakAuraManager(
        weakauras_path=weakauras_path,
        auras_dir=auras_dir,
        backup_dir=backup_dir
    )
    
    # Step 1: Load from original WeakAuras.lua
    manager.load_from_game()
    assert len(manager.auras) == 2
    assert "Combat" in manager.auras
    assert "Enemy Range 20" in manager.auras
    
    # Step 2: Export to YAML
    manager.export_to_yaml()
    assert (auras_dir / "Combat.yaml").exists()
    assert (auras_dir / "Enemy Range 20.yaml").exists()
    
    # Step 3: Clear and reload from YAML
    manager.auras.clear()
    manager.import_from_yaml()
    assert len(manager.auras) == 2
    
    # Step 4: Save back to new WeakAuras.lua
    new_lua_file = weakauras_path / "WeakAuras_new.lua"
    manager.weakauras_path = new_lua_file
    manager.save_to_game()
    
    # Step 5: Load both files and compare key structures
    original_manager = WeakAuraManager(
        weakauras_path=weakauras_path,
        auras_dir=auras_dir,
        backup_dir=backup_dir
    )
    original_manager.weakauras_path = weakauras_file
    original_manager.load_from_game()
    
    new_manager = WeakAuraManager(
        weakauras_path=weakauras_path,
        auras_dir=auras_dir,
        backup_dir=backup_dir
    )
    new_manager.weakauras_path = new_lua_file
    new_manager.load_from_game()
    
    # Compare auras
    assert len(original_manager.auras) == len(new_manager.auras)
    
    for aura_id, original_aura in original_manager.auras.items():
        new_aura = new_manager.auras[aura_id]
        
        # Compare triggers
        assert len(original_aura.triggers) == len(new_aura.triggers)
        assert original_aura.triggers[0]["trigger"]["type"] == new_aura.triggers[0]["trigger"]["type"]
        assert original_aura.triggers[0]["trigger"]["event"] == new_aura.triggers[0]["trigger"]["event"]
        
        # Compare position
        assert original_aura.position["xOffset"] == new_aura.position["xOffset"]
        assert original_aura.position["yOffset"] == new_aura.position["yOffset"]
