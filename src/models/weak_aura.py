# src/models/weak_aura.py
from dataclasses import dataclass, field
from typing import Dict, Any, List, Optional
from enum import Enum
from ..config import (
    REQUIRED_FIELDS,
    VALID_REGION_TYPES,
    VALID_TRIGGER_TYPES,
    DEFAULT_AURA_VALUES
)
import json

class TriggerType(Enum):
    AURA = "aura"
    UNIT = "unit"
    CUSTOM = "custom"
    COMBAT_LOG = "combat_log"
    STATUS = "status"
    POWER = "power"

class RegionType(Enum):
    ICON = "icon"
    AURABAR = "aurabar"
    DYNAMICGROUP = "dynamicgroup"
    GROUP = "group"
    TEXT = "text"

@dataclass
class Trigger:
    type: str
    event: Optional[str] = None
    custom: Optional[str] = None
    unit: Optional[str] = None
    auranames: List[str] = field(default_factory=list)
    spellIds: List[int] = field(default_factory=list)
    custom_type: Optional[str] = None
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'Trigger':
        return cls(
            type=data.get("type", ""),
            event=data.get("event"),
            custom=data.get("custom"),
            unit=data.get("unit"),
            auranames=data.get("auranames", []),
            spellIds=data.get("spellIds", []),
            custom_type=data.get("custom_type")
        )
    
    def to_dict(self) -> Dict[str, Any]:
        result = {"type": self.type}
        if self.event:
            result["event"] = self.event
        if self.custom:
            result["custom"] = self.custom
        if self.unit:
            result["unit"] = self.unit
        if self.auranames:
            result["auranames"] = self.auranames
        if self.spellIds:
            result["spellIds"] = self.spellIds
        if self.custom_type:
            result["custom_type"] = self.custom_type
        return result

@dataclass
class LoadCondition:
    class_: Dict[str, Any] = field(default_factory=dict)
    talent: Dict[str, Any] = field(default_factory=dict)
    spec: Dict[str, Any] = field(default_factory=dict)
    use_never: bool = False
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'LoadCondition':
        return cls(
            class_=data.get("class", {}),
            talent=data.get("talent", {}),
            spec=data.get("spec", {}),
            use_never=data.get("use_never", False)
        )
    
    def to_dict(self) -> Dict[str, Any]:
        return {
            "class": self.class_,
            "talent": self.talent,
            "spec": self.spec,
            "use_never": self.use_never
        }

@dataclass
class SubRegion:
    type: str
    text_text: Optional[str] = None
    glow: bool = False
    glowType: Optional[str] = None
    glowColor: List[float] = field(default_factory=lambda: [1, 1, 1, 1])
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'SubRegion':
        return cls(
            type=data.get("type", ""),
            text_text=data.get("text_text"),
            glow=data.get("glow", False),
            glowType=data.get("glowType"),
            glowColor=data.get("glowColor", [1, 1, 1, 1])
        )
    
    def to_dict(self) -> Dict[str, Any]:
        result = {"type": self.type}
        if self.text_text:
            result["text_text"] = self.text_text
        if self.glow:
            result["glow"] = self.glow
        if self.glowType:
            result["glowType"] = self.glowType
        if self.glowColor != [1, 1, 1, 1]:
            result["glowColor"] = self.glowColor
        return result

@dataclass
class WeakAura:
    id: str
    triggers: List[Dict[str, Any]]
    regionType: str = "icon"
    position: Dict[str, Any] = None
    visual: Dict[str, Any] = None
    parent: str = None
    load: Dict[str, Any] = None
    conditions: Dict[str, Any] = None
    actions: Dict[str, Any] = None
    animation: Dict[str, Any] = None

    def __post_init__(self):
        """Initialize default values for optional fields"""
        self.position = self.position or {}
        self.visual = self.visual or {}
        self.load = self.load or {}
        self.conditions = self.conditions or {}
        self.actions = self.actions or {}
        self.animation = self.animation or {}

    def to_dict(self) -> Dict[str, Any]:
        """Convert WeakAura to dictionary format"""
        return {
            "id": self.id,
            "triggers": self.triggers,
            "regionType": self.regionType,
            "position": self.position,
            "visual": self.visual,
            "parent": self.parent,
            "load": self.load,
            "conditions": self.conditions,
            "actions": self.actions,
            "animation": self.animation
        }

    def validate(self) -> List[str]:
        """Validate the WeakAura configuration"""
        errors = []
        
        # Check required fields
        for field in REQUIRED_FIELDS:
            if not getattr(self, field, None):
                errors.append(f"Missing required field: {field}")
        
        # Validate region type
        if self.regionType not in VALID_REGION_TYPES:
            errors.append(f"Invalid region type: {self.regionType}")
        
        # Validate triggers structure
        if not isinstance(self.triggers, list):
            errors.append("Invalid trigger structure: triggers must be a list")
        else:
            for i, trigger_group in enumerate(self.triggers):
                if not isinstance(trigger_group, dict):
                    errors.append(f"Invalid trigger {i}: must be a dictionary")
                    continue
                
                if "trigger" not in trigger_group:
                    errors.append(f"Invalid trigger {i}: missing 'trigger' key")
                    continue
                
                trigger = trigger_group["trigger"]
                if not isinstance(trigger, dict):
                    errors.append(f"Invalid trigger {i}: trigger must be a dictionary")
                    continue
                
                if "type" not in trigger:
                    errors.append(f"Invalid trigger {i}: missing trigger type")
                elif trigger["type"] not in VALID_TRIGGER_TYPES:
                    errors.append(f"Invalid trigger type: {trigger['type']}")
        
        # Validate visual properties
        if self.visual:
            if "color" in self.visual:
                color = self.visual["color"]
                if not isinstance(color, list) or len(color) != 4:
                    errors.append("Invalid color: must be a list of 4 values")
                else:
                    for val in color:
                        if not isinstance(val, (int, float)) or val < 0 or val > 1:
                            errors.append("Invalid color: values must be between 0 and 1")
                            break
        
        # Validate position
        if self.position:
            required_pos_fields = ["xOffset", "yOffset", "anchorPoint"]
            for field in required_pos_fields:
                if field not in self.position:
                    errors.append(f"Missing position field: {field}")
            
            if "anchorPoint" in self.position and self.position["anchorPoint"] not in ["CENTER", "TOP", "BOTTOM", "LEFT", "RIGHT", "TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"]:
                errors.append(f"Invalid anchor point: {self.position['anchorPoint']}")
        
        return errors
    
    def apply_template(self, template: Dict[str, Any]) -> None:
        """Apply a template to this WeakAura"""
        if "visual" in template:
            if "regionType" in template["visual"]:
                self.regionType = template["visual"]["regionType"]
                
        if "position" in template:
            self.position.update(template["position"])
            
        # Don't override existing triggers/conditions
        if "triggers" in template and not self.triggers:
            self.triggers = template["triggers"]
            
        if "conditions" in template and not self.conditions:
            self.conditions = template["conditions"]

    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> "WeakAura":
        """Create WeakAura from dictionary data"""
        return cls(
            id=data["id"],
            triggers=data["triggers"],
            regionType=data.get("regionType", "icon"),
            position=data.get("position", {}),
            visual=data.get("visual", {}),
            parent=data.get("parent"),
            load=data.get("load", {}),
            conditions=data.get("conditions", {}),
            actions=data.get("actions", {}),
            animation=data.get("animation", {})
        )

    @classmethod
    def from_lua_table(cls, aura_id: str, data: Dict[str, Any]) -> "WeakAura":
        """Create WeakAura from Lua table data"""
        # Extract triggers
        triggers_data = data.get("triggers", {})
        triggers = []
        
        # Handle numeric keys in triggers
        if isinstance(triggers_data, dict):
            # If it's a single trigger in the old format
            if "trigger" in triggers_data:
                triggers.append({
                    "trigger": triggers_data.get("trigger", {}),
                    "untrigger": triggers_data.get("untrigger", {})
                })
            # If it's multiple triggers in the new format
            else:
                # Get all numeric keys (both int and str types)
                trigger_keys = []
                for k in triggers_data.keys():
                    if k == "activeTriggerMode":
                        continue
                    try:
                        if isinstance(k, (int, str)) and str(k).isdigit():
                            trigger_keys.append(int(str(k)))
                    except (ValueError, TypeError):
                        continue
                
                # Sort and process triggers
                for key in sorted(trigger_keys):
                    # Try both integer and string keys
                    trigger_data = triggers_data.get(key) or triggers_data.get(str(key))
                    if isinstance(trigger_data, dict):
                        triggers.append(trigger_data)
        
        # Ensure at least one trigger exists
        if not triggers:
            triggers = [{
                "trigger": {"type": "aura2"},
                "untrigger": {}
            }]
        
        return cls(
            id=aura_id,
            triggers=triggers,
            regionType=data.get("regionType", "icon"),
            position={
                "xOffset": data.get("xOffset", 0),
                "yOffset": data.get("yOffset", 0),
                "anchorPoint": data.get("anchorPoint", "CENTER"),
                "frameStrata": data.get("frameStrata", 1)
            },
            visual={
                "regionType": data.get("regionType", "icon"),
                "color": data.get("color", [1, 1, 1, 1]),
                "desaturate": data.get("desaturate", False),
                "alpha": data.get("alpha", 1),
                "cooldown": data.get("cooldown", False),
                "glow": data.get("glow", False)
            },
            parent=None,
            load=data.get("load", {}),
            conditions=data.get("conditions", {}),
            actions=data.get("actions", {}),
            animation=data.get("animation", {})
        )

    def to_lua_table(self) -> Dict[str, Any]:
        """Convert WeakAura to Lua table format"""
        # Start with basic fields
        data = {
            "id": self.id,
            "regionType": self.regionType,
            "parent": self.parent,
        }
        
        # Add position fields at root level
        if self.position:
            data.update({
                "xOffset": self.position.get("xOffset", 0),
                "yOffset": self.position.get("yOffset", 0),
                "anchorPoint": self.position.get("anchorPoint", "CENTER"),
                "frameStrata": self.position.get("frameStrata", 1)
            })
        
        # Add visual fields at root level
        if self.visual:
            data.update({
                "color": self.visual.get("color", [1, 1, 1, 1]),
                "desaturate": self.visual.get("desaturate", False),
                "alpha": self.visual.get("alpha", 1),
                "cooldown": self.visual.get("cooldown", False),
                "glow": self.visual.get("glow", False)
            })
        
        # Add triggers in WeakAuras.lua format
        triggers = {}
        for i, trigger_group in enumerate(self.triggers):
            triggers[i] = {
                "trigger": trigger_group.get("trigger", {}),
                "untrigger": trigger_group.get("untrigger", {})
            }
        triggers["activeTriggerMode"] = -10  # Default value
        data["triggers"] = triggers
        
        # Add other sections if they exist
        if self.load:
            data["load"] = self.load
        if self.conditions:
            data["conditions"] = self.conditions
        if self.actions:
            data["actions"] = self.actions
        if self.animation:
            data["animation"] = self.animation
            
        # Add default fields that WeakAuras expects
        data.update({
            "internalVersion": 78,  # From config.WEAKAURAS_DB_VERSION
            "keepAspectRatio": False,
            "selfPoint": "CENTER",
            "icon": True,
            "iconSource": 0,
            "cooldownSwipe": False,
            "uid": self.id[:12]  # Simple UID generation
        })
        
        return data