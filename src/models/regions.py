from typing import Dict, Any, Optional
from .aura import WeakAura

class IconAura(WeakAura):
    def __init__(self):
        super().__init__()
        # Icon specific properties
        self.icon_source: int = 0
        self.cooldown_swipe: bool = False
        self.cooldown_edge: bool = False
        self.display_icon: Optional[str] = None
        self.desaturate: bool = False
        self.use_tooltip: bool = False
        self.zoom: float = 0
        self.cooldown: bool = False
        self.cooldown_text_disabled: bool = False
        self.use_cooldown_mod_rate: bool = True
        self.keep_aspect_ratio: bool = False
        self.icon: bool = True

    @classmethod
    def from_lua_table(cls, aura_id: str, data: Dict[str, Any]) -> 'IconAura':
        aura = super().from_lua_table(aura_id, data)
        
        # Icon specific properties
        aura.icon_source = data.get("iconSource", 0)
        aura.cooldown_swipe = data.get("cooldownSwipe", False)
        aura.cooldown_edge = data.get("cooldownEdge", False)
        aura.display_icon = data.get("displayIcon")
        aura.desaturate = data.get("desaturate", False)
        aura.use_tooltip = data.get("useTooltip", False)
        aura.zoom = data.get("zoom", 0)
        aura.cooldown = data.get("cooldown", False)
        aura.cooldown_text_disabled = data.get("cooldownTextDisabled", False)
        aura.use_cooldown_mod_rate = data.get("useCooldownModRate", True)
        aura.keep_aspect_ratio = data.get("keepAspectRatio", False)
        aura.icon = data.get("icon", True)
        
        return aura

    def to_lua_table(self) -> Dict[str, Any]:
        data = super().to_lua_table()
        data.update({
            "iconSource": self.icon_source,
            "cooldownSwipe": self.cooldown_swipe,
            "cooldownEdge": self.cooldown_edge,
            "displayIcon": self.display_icon,
            "desaturate": self.desaturate,
            "useTooltip": self.use_tooltip,
            "zoom": self.zoom,
            "cooldown": self.cooldown,
            "cooldownTextDisabled": self.cooldown_text_disabled,
            "useCooldownModRate": self.use_cooldown_mod_rate,
            "keepAspectRatio": self.keep_aspect_ratio,
            "icon": self.icon,
        })
        return data

class TextAura(WeakAura):
    def __init__(self):
        super().__init__()
        self.text_content: str = ""
        self.font: str = ""
        self.font_size: int = 12
        self.text_color: Dict[str, float] = {}
        self.justify: str = "LEFT"
        self.word_wrap: str = "WordWrap"
        self.outline: str = "OUTLINE"

    @classmethod
    def from_lua_table(cls, aura_id: str, data: Dict[str, Any]) -> 'TextAura':
        aura = super().from_lua_table(aura_id, data)
        aura.text_content = data.get("text", "")
        aura.font = data.get("font", "")
        aura.font_size = data.get("fontSize", 12)
        aura.text_color = data.get("textColor", {})
        aura.justify = data.get("justify", "LEFT")
        aura.word_wrap = data.get("wordWrap", "WordWrap")
        aura.outline = data.get("outline", "OUTLINE")
        return aura

    def to_lua_table(self) -> Dict[str, Any]:
        data = super().to_lua_table()
        data.update({
            "text": self.text_content,
            "font": self.font,
            "fontSize": self.font_size,
            "textColor": self.text_color,
            "justify": self.justify,
            "wordWrap": self.word_wrap,
            "outline": self.outline,
        })
        return data