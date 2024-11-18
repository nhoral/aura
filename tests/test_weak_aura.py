# tests/test_weak_aura.py
import pytest
from src.models.weak_aura import WeakAura, VALID_TRIGGER_TYPES

@pytest.fixture
def sample_aura_data():
    return {
        "triggers": {
            "trigger": {
                "type": "aura",
                "event": "Health"
            }
        },
        "regionType": "icon",
        "xOffset": 0,
        "yOffset": 0,
        "anchorPoint": "CENTER",
        "height": 30,
        "width": 30,
        "color": [1, 1, 1, 1]
    }

def test_weak_aura_creation(sample_aura_data):
    aura = WeakAura.from_lua_table("TestAura", sample_aura_data)
    assert aura.id == "TestAura"
    assert len(aura.triggers) == 1
    assert aura.triggers[0]["trigger"]["type"] == "aura"
    assert aura.triggers[0]["trigger"]["event"] == "Health"

def test_weak_aura_invalid():
    invalid_data = {
        "triggers": {
            "trigger": "not_a_dict",  # Invalid trigger structure
            "untrigger": {}
        },
        "color": "not_a_list",     # Invalid color
    }
    aura = WeakAura.from_lua_table("InvalidAura", invalid_data)
    errors = aura.validate()
    
    print("Validation errors:", errors)  # Debug print
    assert len(errors) > 0
    assert any("Invalid trigger" in error for error in errors)

def test_template_application():
    base_aura = WeakAura.from_lua_table("TestAura", {
        "triggers": {"trigger": {"type": "aura"}},
        "xOffset": 0,
        "yOffset": 0,
        "regionType": "icon"
    })
    
    template = {
        "visual": {
            "regionType": "aurabar",
            "color": [1, 1, 1, 1]
        },
        "position": {
            "anchorPoint": "CENTER"
        }
    }
    
    base_aura.apply_template(template)
    assert base_aura.regionType == "aurabar"
    assert base_aura.position["anchorPoint"] == "CENTER"

def test_weak_aura_validation():
    # Valid aura
    aura = WeakAura(
        id="Test",
        triggers=[{
            "trigger": {
                "type": "unit",
                "event": "Health",
                "unit": "player"
            },
            "untrigger": {}
        }]
    )
    assert len(aura.validate()) == 0

    # Invalid trigger type
    aura = WeakAura(
        id="Test",
        triggers=[{
            "trigger": {
                "type": "invalid_type",
                "event": "Health",
                "unit": "player"
            },
            "untrigger": {}
        }]
    )
    errors = aura.validate()
    assert len(errors) == 1
    assert "invalid trigger type" in errors[0].lower()
    assert "invalid_type" in errors[0]

    # Missing trigger type
    aura = WeakAura(
        id="Test",
        triggers=[{
            "trigger": {
                "event": "Health",
                "unit": "player"
            },
            "untrigger": {}
        }]
    )
    errors = aura.validate()
    assert len(errors) == 1
    assert "missing trigger type" in errors[0].lower()
    assert "trigger 0" in errors[0]

    # Invalid trigger structure (missing trigger key)
    aura = WeakAura(
        id="Test",
        triggers=[{
            "not_trigger": {
                "type": "unit",
                "event": "Health"
            }
        }]
    )
    errors = aura.validate()
    assert len(errors) == 1
    assert "missing 'trigger' key" in errors[0]