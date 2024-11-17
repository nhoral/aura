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
    load: LoadCondition
    regionType: str
    visual: Dict[str, Any] = field(default_factory=lambda: DEFAULT_AURA_VALUES["visual"].copy())
    position: Dict[str, Any] = field(default_factory=lambda: DEFAULT_AURA_VALUES["position"].copy())
    metadata: Dict[str, Any] = field(default_factory=dict)
    subRegions: List[SubRegion] = field(default_factory=list)
    parent: Optional[str] = None
    conditions: List[Dict[str, Any]] = field(default_factory=list)
    actions: Dict[str, Any] = field(default_factory=dict)
    animation: Dict[str, Any] = field(default_factory=dict)
    
    @classmethod
    def from_lua_table(cls, aura_id: str, data: Dict[str, Any]) -> 'WeakAura':
        # Handle triggers
        triggers_data = data.get("triggers", {})
        if isinstance(triggers_data, str):
            triggers = [{"trigger": {"type": "invalid", "raw": triggers_data}}]
        elif isinstance(triggers_data, dict):
            if "trigger" in triggers_data:
                triggers = [triggers_data]
            else:
                triggers = [{"trigger": triggers_data}]
        else:
            triggers = list(triggers_data)

        # Separate visual properties
        visual = {
            "regionType": data.get("regionType", "icon"),
            "color": data.get("color", [1, 1, 1, 1]),
            "desaturate": data.get("desaturate", False),
            "icon": data.get("icon", True),
            "cooldown": data.get("cooldown", False),
            "glow": data.get("glow", False),
            "alpha": data.get("alpha", 1),
        }

        # Position properties
        position = {
            "xOffset": data.get("xOffset", 0),
            "yOffset": data.get("yOffset", 0),
            "anchorPoint": data.get("anchorPoint", "CENTER"),
            "width": data.get("width", 30),
            "height": data.get("height", 30),
        }

        # Everything else goes to metadata
        used_keys = set().union(
            triggers_data.keys() if isinstance(triggers_data, dict) else set(),
            visual.keys(),
            position.keys(),
            {"id", "load", "subRegions", "conditions", "actions", "animation"}
        )
        
        metadata = {
            k: v for k, v in data.items()
            if k not in used_keys
        }

        return cls(
            id=aura_id,
            triggers=triggers,
            load=LoadCondition.from_dict(data.get("load", {})),
            regionType=data.get("regionType", "icon"),
            visual=visual,
            position=position,
            metadata=metadata,
            subRegions=[SubRegion.from_dict(sr) for sr in data.get("subRegions", [])],
            parent=data.get("parent"),
            conditions=data.get("conditions", []),
            actions=data.get("actions", {}),
            animation=data.get("animation", {})
        )
    
    def to_lua_table(self) -> Dict[str, Any]:
        """Convert back to Lua table format"""
        result = {
            "id": self.id,
            "triggers": self.triggers,
            "regionType": self.regionType,
        }
        
        # Add all sections
        result.update(self.visual)
        result.update(self.position)
        result.update(self.metadata)
        
        # Add structured data
        if self.load:
            result["load"] = self.load.to_dict()
        if self.subRegions:
            result["subRegions"] = [sr.to_dict() for sr in self.subRegions]
        if self.conditions:
            result["conditions"] = self.conditions
        if self.actions:
            result["actions"] = self.actions
        if self.animation:
            result["animation"] = self.animation
        if self.parent:
            result["parent"] = self.parent
            
        return result
    
    def validate(self) -> List[str]:
        """Validate the WeakAura configuration"""
        errors = []
        
        # Validate triggers
        for i, trigger_group in enumerate(self.triggers):
            print(f"\nValidating trigger {i} for {self.id}:")
            
            # Each trigger_group should have a 'trigger' key
            if not isinstance(trigger_group, dict) or "trigger" not in trigger_group:
                print("  No 'trigger' key in group")
                errors.append(f"Trigger {i}: Invalid trigger group structure")
                continue
                
            trigger_container = trigger_group["trigger"]
            print(f"  Trigger container: {json.dumps(trigger_container, indent=2)}")
            
            # The container should have a '0' key for the main trigger
            if not isinstance(trigger_container, dict) or "0" not in trigger_container:
                print("  No '0' key in container")
                errors.append(f"Trigger {i}: Invalid trigger container")
                continue
            
            main_trigger = trigger_container["0"]
            if not isinstance(main_trigger, dict) or "trigger" not in main_trigger:
                print("  Invalid main trigger structure")
                errors.append(f"Trigger {i}: Invalid main trigger structure")
                continue
                
            trigger_settings = main_trigger["trigger"]
            print(f"  Trigger settings: {json.dumps(trigger_settings, indent=2)}")
            
            if not isinstance(trigger_settings, dict) or "type" not in trigger_settings:
                print("  No 'type' in settings")
                errors.append(f"Trigger {i}: Missing trigger type")
                continue
                
            trigger_type = trigger_settings["type"]
            print(f"  Found trigger type: {trigger_type}")
            
            # Validate the trigger type
            if trigger_type not in VALID_TRIGGER_TYPES:
                print(f"  Invalid trigger type: {trigger_type}")
                errors.append(f"Trigger {i}: Invalid trigger type '{trigger_type}'")
            else:
                print(f"  Valid trigger type: {trigger_type}")
        
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