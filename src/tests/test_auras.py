import pytest
from auras.health import create_health_aura
from auras.health2 import create_health2_aura
from auras.pets_active import create_hunter_pets_aura

# Required properties that all auras must have
REQUIRED_PROPERTIES = {
    "id",
    "regionType",
    "internalVersion",
    "anchorPoint",
    "triggers",
    "load",
    "actions",
    "animation",
    "uid",
    "alpha",
    "width",
    "height",
    "xOffset",
    "yOffset",
    "adjustedMax",
    "adjustedMin",
    "text",
    "desaturate",
    "sparkOffsetY",
    "sparkOffsetX",
    "useAdjustededMax",
    "useAdjustededMin",
    "gradientOrientation",
    "barColor2",
    "selfPoint",
    "authorOptions",
    "icon_side",
    "zoom",
    "inverse",
    "orientation",
}

# Required structure for triggers
def validate_triggers(triggers):
    """Validate the triggers structure matches game format"""
    assert isinstance(triggers, dict), "Triggers must be a dictionary"
    
    # Check if trigger 1 exists and is properly formatted
    assert 1 in triggers or isinstance(triggers.get(1), dict), "Missing primary trigger"
    
    # Check activeTriggerMode
    assert "activeTriggerMode" in triggers, "Missing activeTriggerMode"
    assert triggers["activeTriggerMode"] == -10, "Incorrect activeTriggerMode value"
    
    # Validate trigger structure
    trigger1 = triggers.get(1, {})
    assert "trigger" in trigger1, "Missing trigger in primary trigger"
    assert "untrigger" in trigger1, "Missing untrigger in primary trigger"

def test_aura_creation():
    """Test that all auras are created with required properties"""
    auras = [
        create_health_aura(),
        create_health2_aura(),
        create_hunter_pets_aura()
    ]
    
    for aura in auras:
        # Check all required properties exist
        missing_props = REQUIRED_PROPERTIES - set(aura.keys())
        assert not missing_props, f"Missing required properties: {missing_props}"
        
        # Validate triggers structure
        validate_triggers(aura["triggers"])
        
        # Check animation structure
        assert "start" in aura["animation"]
        assert "main" in aura["animation"]
        assert "finish" in aura["animation"]
        
        # Check load conditions
        assert all(key in aura["load"] for key in ["size", "spec", "class", "talent"])
        
        # Check actions
        assert all(key in aura["actions"] for key in ["start", "init", "finish"])

def test_relative_positions():
    """Test that auras are positioned correctly relative to each other"""
    health = create_health_aura()
    health2 = create_health2_aura()
    pets = create_hunter_pets_aura()
    
    # Check that all positions are whole numbers
    assert health["xOffset"] == int(health["xOffset"]), "Health xOffset should be a whole number"
    assert health["yOffset"] == int(health["yOffset"]), "Health yOffset should be a whole number"
    assert health2["xOffset"] == int(health2["xOffset"]), "Health2 xOffset should be a whole number"
    assert health2["yOffset"] == int(health2["yOffset"]), "Health2 yOffset should be a whole number"
    assert pets["xOffset"] == int(pets["xOffset"]), "HunterPets xOffset should be a whole number"
    assert pets["yOffset"] == int(pets["yOffset"]), "HunterPets yOffset should be a whole number"
    
    # Check vertical spacing (20px between each)
    assert health2["yOffset"] - health["yOffset"] == -20
    assert pets["yOffset"] - health2["yOffset"] == -20
    
    # Check horizontal alignment
    assert health["xOffset"] == health2["xOffset"] == pets["xOffset"] == 322

def test_health_specific():
    """Test Health aura specific properties"""
    health = create_health_aura()
    assert health["id"] == "Health"
    assert health["barColor"] == [0, 1, 0, 1]  # Green
    assert health["yOffset"] == -140
    assert health["xOffset"] == 322
    assert health["uid"] == "345WbRL7y2P"

def test_health2_specific():
    """Test Health2 aura specific properties"""
    health2 = create_health2_aura()
    assert health2["id"] == "Health2"
    assert health2["barColor"] == [0, 0, 1, 1]  # Blue
    assert health2["yOffset"] == -160
    assert health2["xOffset"] == 322
    assert health2["uid"] == "345WbRL7y2Q"

def test_hunter_pets_specific():
    """Test HunterPets aura specific properties"""
    pets = create_hunter_pets_aura()
    assert pets["id"] == "HunterPets"
    assert pets["barColor"] == [1, 0, 0, 1]  # Red
    assert pets["yOffset"] == -180
    assert pets["xOffset"] == 322
    assert "custom" in pets["triggers"][1]["trigger"]
    assert pets["width"] == 20
    assert pets["height"] == 20

def test_trigger_format():
    """Test that triggers are formatted correctly for Lua conversion"""
    for aura_func in [create_health_aura, create_health2_aura, create_hunter_pets_aura]:
        aura = aura_func()
        triggers = aura["triggers"]
        
        # Check trigger structure
        assert isinstance(triggers, dict)
        assert 1 in triggers
        assert "activeTriggerMode" in triggers
        
        # Check that trigger 1 is properly formatted
        trigger1 = triggers[1]
        assert isinstance(trigger1, dict)
        assert "trigger" in trigger1
        assert "untrigger" in trigger1