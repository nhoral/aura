from dataclasses import dataclass, field
from typing import Dict, Any, Optional, List
import json
from ..core.containers import MixedArray

@dataclass
class AuraTrigger:
    type: str
    event: Optional[str] = None
    spellId: Optional[int] = None
    unit: Optional[str] = None
    # Add other trigger fields as needed

@dataclass
class AuraCondition:
    check: Dict[str, Any]
    changes: List[Dict[str, Any]]
    # Add other condition fields as needed

@dataclass
class AuraAnimation:
    start: Dict[str, Any]
    main: Dict[str, Any]
    finish: Dict[str, Any]
    # Add other animation fields as needed

@dataclass
class Aura:
    id: str
    triggers: MixedArray
    load: Dict[str, Any]
    conditions: List[AuraCondition] = field(default_factory=list)
    animation: Optional[AuraAnimation] = None
    actions: Dict[str, Any] = field(default_factory=dict)
    authorOptions: List[Dict[str, Any]] = field(default_factory=list)
    information: Dict[str, Any] = field(default_factory=dict)
    regionType: str = "icon"
    config: Dict[str, Any] = field(default_factory=dict)
    subRegions: List[Dict[str, Any]] = field(default_factory=list)
    
    def to_json(self) -> str:
        """Convert aura to JSON string."""
        return json.dumps({
            'id': self.id,
            'triggers': self.triggers.to_lua(),
            'load': self.load,
            'conditions': [c.__dict__ for c in self.conditions],
            'animation': self.animation.__dict__ if self.animation else None,
            'actions': self.actions,
            'authorOptions': self.authorOptions,
            'information': self.information,
            'regionType': self.regionType,
            'config': self.config,
            'subRegions': self.subRegions
        }, indent=2)
    
    @classmethod
    def from_json(cls, json_str: str) -> 'Aura':
        """Create Aura instance from JSON string."""
        data = json.loads(json_str)
        triggers_data = data.get('triggers', {})
        triggers = MixedArray.from_lua_table(triggers_data)
        conditions = [AuraCondition(**c) for c in data.get('conditions', [])]
        animation = AuraAnimation(**data['animation']) if data.get('animation') else None
        
        return cls(
            id=data['id'],
            triggers=triggers,
            load=data['load'],
            conditions=conditions,
            animation=animation,
            actions=data.get('actions', {}),
            authorOptions=data.get('authorOptions', []),
            information=data.get('information', {}),
            regionType=data.get('regionType', 'icon'),
            config=data.get('config', {}),
            subRegions=data.get('subRegions', [])
        )

    @classmethod
    def from_dict(cls, aura_id: str, data: Dict[str, Any]) -> 'Aura':
        # Convert the triggers structure to MixedArray
        triggers_data = data.get('triggers', {})
        triggers = MixedArray.from_lua_table(triggers_data)
        
        return cls(
            id=aura_id,
            triggers=triggers,
            load=data['load'],
            conditions=[AuraCondition(**c) for c in data.get('conditions', [])],
            animation=AuraAnimation(**data['animation']) if data.get('animation') else None,
            actions=data.get('actions', {}),
            authorOptions=data.get('authorOptions', []),
            information=data.get('information', {}),
            regionType=data.get('regionType', 'icon'),
            config=data.get('config', {}),
            subRegions=data.get('subRegions', [])
        )