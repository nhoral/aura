# tests/test_manager.py
import pytest
from pathlib import Path
from src.core.manager import WeakAuraManager
from src.models.weak_aura import WeakAura
from src.config import (
    DEFAULT_AURA_VALUES,
    WEAKAURAS_DB_VERSION,
    VALID_REGION_TYPES,
    WEAKAURAS_FILE
)
import yaml

@pytest.fixture
def test_paths(tmp_path):
    """Create test directories and return paths"""
    weakauras_path = tmp_path / "SavedVariables"
    auras_dir = tmp_path / "auras"
    backup_dir = tmp_path / "backups"
    
    # Create directories
    weakauras_path.mkdir()
    auras_dir.mkdir()
    backup_dir.mkdir()
    
    return {
        "weakauras_path": weakauras_path,
        "auras_dir": auras_dir,
        "backup_dir": backup_dir
    }

@pytest.fixture
def sample_weakauras_file(test_paths):
    content = f"""WeakAurasSaved = {{
        ["displays"] = {{
            ["TestAura"] = {{
                ["id"] = "TestAura",
                ["triggers"] = {{
                    ["trigger"] = {{
                        ["type"] = "aura",
                        ["event"] = "Health"
                    }}
                }},
                ["regionType"] = "{VALID_REGION_TYPES[0]}",
                ["xOffset"] = {DEFAULT_AURA_VALUES["position"]["xOffset"]},
                ["yOffset"] = {DEFAULT_AURA_VALUES["position"]["yOffset"]},
                ["anchorPoint"] = "{DEFAULT_AURA_VALUES["position"]["anchorPoint"]}"
            }}
        }},
        ["dbVersion"] = {WEAKAURAS_DB_VERSION}
    }}"""
    
    file_path = test_paths["weakauras_path"] / WEAKAURAS_FILE
    file_path.write_text(content)
    return file_path

@pytest.fixture
def manager(test_paths):
    return WeakAuraManager(
        weakauras_path=test_paths["weakauras_path"],
        auras_dir=test_paths["auras_dir"],
        backup_dir=test_paths["backup_dir"]
    )

def test_load_from_game(manager, sample_weakauras_file):
    """Test loading from WeakAuras.lua"""
    manager.load_from_game()
    assert "TestAura" in manager.auras
    assert manager.auras["TestAura"].regionType == VALID_REGION_TYPES[0]

def test_save_to_game(manager, sample_weakauras_file):
    """Test saving to WeakAuras.lua"""
    manager.load_from_game()
    
    # Modify an aura
    manager.auras["TestAura"].position["xOffset"] = 100
    
    # Save changes
    manager.save_to_game()
    
    # Load again to verify changes
    new_manager = WeakAuraManager(
        weakauras_path=manager.weakauras_path.parent,
        auras_dir=manager.auras_dir,
        backup_dir=manager.backup_dir
    )
    new_manager.load_from_game()
    
    assert new_manager.auras["TestAura"].position["xOffset"] == 100

def test_backup_creation(manager, sample_weakauras_file):
    """Test backup creation when saving"""
    manager.load_from_game()
    
    # Modify and save to trigger backup
    manager.auras["TestAura"].position["xOffset"] = 100
    manager.save_to_game()
    
    # Check backup was created
    backup_files = list(manager.backup_dir.glob("WeakAuras_*.lua"))
    assert len(backup_files) == 1
    
def test_file_not_found(manager):
    """Test error when WeakAuras.lua doesn't exist"""
    with pytest.raises(FileNotFoundError):
        manager.load_from_game()

def test_export_to_yaml(manager, sample_weakauras_file):
    """Test exporting auras to YAML files"""
    manager.load_from_game()
    manager.export_to_yaml()
    
    # Check that YAML file was created
    yaml_file = manager.auras_dir / "TestAura.yaml"
    assert yaml_file.exists()
    
    # Verify YAML content
    with yaml_file.open('r') as f:
        aura_data = yaml.safe_load(f)
        
    assert aura_data["id"] == "TestAura"
    assert aura_data["visual"]["regionType"] == VALID_REGION_TYPES[0]
    assert "position" in aura_data
    assert aura_data["position"]["xOffset"] == DEFAULT_AURA_VALUES["position"]["xOffset"]

def test_import_from_yaml(manager, sample_weakauras_file):
    """Test importing auras from YAML files"""
    # First export
    manager.load_from_game()
    manager.export_to_yaml()
    
    # Clear auras and reload from yaml
    manager.auras.clear()
    manager.import_from_yaml()
    
    assert "TestAura" in manager.auras
    aura = manager.auras["TestAura"]
    assert aura.regionType == VALID_REGION_TYPES[0]
    assert aura.position["xOffset"] == DEFAULT_AURA_VALUES["position"]["xOffset"]

@pytest.fixture
def complex_aura_data():
    """Fixture for complex aura test data"""
    return {
        "id": "ComplexAura",
        "triggers": [{
            "trigger": {
                "type": "custom",
                "custom": "function() return true end",
                "events": "UNIT_HEALTH"
            }
        }],
        "load": {
            "class": {
                "single": "WARRIOR",
                "multi": {"WARRIOR": True, "ROGUE": True}
            }
        },
        "regionType": "icon",
        "actions": {
            "start": {
                "sound": "None",
                "glow": True
            }
        },
        "animation": {
            "start": {
                "type": "none",
                "duration": 1
            }
        }
    }

def test_export_complex_aura(manager, complex_aura_data):
    """Test exporting aura with complex properties"""
    complex_aura = WeakAura.from_lua_table("ComplexAura", complex_aura_data)
    manager.auras["ComplexAura"] = complex_aura
    manager.export_to_yaml()
    
    # Verify YAML content
    yaml_file = manager.auras_dir / "ComplexAura.yaml"
    with yaml_file.open('r') as f:
        aura_data = yaml.safe_load(f)
    
    assert aura_data["triggers"][0]["trigger"]["type"] == "custom"
    assert "load" in aura_data
    assert aura_data["load"]["class"]["single"] == "WARRIOR"
    assert "actions" in aura_data
    assert aura_data["actions"]["start"]["glow"] is True