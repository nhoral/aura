from dataclasses import dataclass, field
from typing import Dict, Any, Optional
import json

@dataclass
class WeakAurasSave:
    """Represents the entire WeakAuras saved variables file structure."""
    displays: Dict[str, 'Aura'] = field(default_factory=dict)
    displays_temp: Dict[str, Any] = field(default_factory=dict)
    registered: Dict[str, Any] = field(default_factory=dict)
    login_message: bool = True
    minimap: Optional[Dict[str, Any]] = None
    history: Optional[Dict[str, Any]] = None
    
    def to_json(self) -> str:
        """Convert entire save to JSON string."""
        return json.dumps({
            'displays': {k: v.to_json() for k, v in self.displays.items()},
            'displays_temp': self.displays_temp,
            'registered': self.registered,
            'login_message': self.login_message,
            'minimap': self.minimap,
            'history': self.history
        }, indent=2)
    
    @classmethod
    def from_json(cls, json_str: str) -> 'WeakAurasSave':
        """Create WeakAurasSave instance from JSON string."""
        data = json.loads(json_str)
        displays = {
            k: Aura.from_json(v) for k, v in data.get('displays', {}).items()
        }
        return cls(
            displays=displays,
            displays_temp=data.get('displays_temp', {}),
            registered=data.get('registered', {}),
            login_message=data.get('login_message', True),
            minimap=data.get('minimap'),
            history=data.get('history')
        )