from typing import Dict, Any, Optional, List
import json
from slpp import slpp as lua
from src.models.triggers import Triggers

class WeakAura:
    def __init__(self):
        # Core properties
        self.id: str = ""
        self.region_type: str = ""
        self.parent: Optional[str] = None
        self.uid: str = ""
        self.internal_version: int = 78
        
        # Position/Layout
        self.x_offset: float = 0
        self.y_offset: float = 0
        self.width: int = 30
        self.height: int = 30
        self.anchor_point: str = "CENTER"
        self.self_point: str = "CENTER"
        
        # Visual properties
        self.alpha: float = 1.0
        self.color: Dict[str, float] = {"r": 1, "g": 1, "b": 1, "a": 1}
        
        # Store raw triggers
        self.triggers: Triggers = Triggers()
        
        # Other properties
        self.conditions: List[Dict[str, Any]] = []
        self.load: Dict[str, Any] = {}
        self.actions: Dict[str, Any] = {}
        self.animation: Dict[str, Any] = {}
        self.config: Dict[str, Any] = {}
        self.author_options: Dict[str, Any] = {}
        self.information: Dict[str, Any] = {}

    @classmethod
    def from_lua_table(cls, aura_id: str, data: Dict[str, Any]) -> 'WeakAura':
        """Create a WeakAura instance from a lua table dictionary"""
        aura = cls()
        aura.id = aura_id
        aura.region_type = data.get("regionType", "")
        aura.parent = data.get("parent")
        aura.uid = data.get("uid", "")
        aura.internal_version = data.get("internalVersion", 78)
        
        # Position/Layout
        aura.x_offset = data.get("xOffset", 0)
        aura.y_offset = data.get("yOffset", 0)
        aura.width = data.get("width", 30)
        aura.height = data.get("height", 30)
        aura.anchor_point = data.get("anchorPoint", "CENTER")
        aura.self_point = data.get("selfPoint", "CENTER")
        
        # Visual properties
        aura.alpha = data.get("alpha", 1.0)
        aura.color = data.get("color", {"r": 1, "g": 1, "b": 1, "a": 1})
        
        # Add debug print
        print("\nTriggers data from Lua:")
        print(data.get("triggers", {}))
        
        aura.triggers = Triggers.from_lua_table(data.get("triggers", {}))
        
        # Add debug print
        print("\nParsed triggers:")
        print(aura.triggers)
        
        # Other properties
        aura.conditions = data.get("conditions", [])
        aura.load = data.get("load", {})
        aura.actions = data.get("actions", {})
        aura.animation = data.get("animation", {})
        aura.config = data.get("config", {})
        aura.author_options = data.get("authorOptions", {})
        aura.information = data.get("information", {})
        
        return aura

    def to_lua_table(self) -> Dict[str, Any]:
        """Convert the WeakAura to a lua table dictionary"""
        # Debug print
        print("\nTriggers structure before encoding:")
        print(self.triggers.to_lua_dict())
        
        return {
            "regionType": self.region_type,
            "parent": self.parent,
            "uid": self.uid,
            "internalVersion": self.internal_version,
            "xOffset": self.x_offset,
            "yOffset": self.y_offset,
            "width": self.width,
            "height": self.height,
            "anchorPoint": self.anchor_point,
            "selfPoint": self.self_point,
            "alpha": self.alpha,
            "color": self.color,
            "triggers": self.triggers.to_lua_dict(),
            "conditions": self.conditions,
            "load": self.load,
            "actions": self.actions,
            "animation": self.animation,
            "config": self.config,
            "authorOptions": self.author_options,
            "information": self.information,
        }

class LuaArray:
    """Helper class to represent a Lua array"""
    def __init__(self, items: List[Any]):
        self.items = items

    def __repr__(self):
        return f"LuaArray({self.items})"