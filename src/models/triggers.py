from typing import Dict, Any, List, Union

class Triggers:
    def __init__(self):
        self.triggers: List[Any] = []
    
    @classmethod
    def from_lua_table(cls, data: Dict[str, Any]) -> 'Triggers':
        triggers = cls()
        
        # Convert dictionary format to list format
        result = []
        
        # Add trigger objects first
        i = 0
        while str(i) in data or i in data:  # Check both string and int keys
            key = str(i) if str(i) in data else i
            result.append(data[key])
            i += 1
            
        # Add activeTriggerMode if present
        if 'activeTriggerMode' in data:
            result.append({'activeTriggerMode': data['activeTriggerMode']})
            
        triggers.triggers = result
        return triggers
    
    def to_lua_dict(self) -> List[Any]:
        return self.triggers
    
    def __str__(self):
        return f"Triggers(count={len(self.triggers)})"