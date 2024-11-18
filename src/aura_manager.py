import os
from utils.wow_paths import get_weakauras_saved_variables_path

class AuraManager:
    def __init__(self):
        self.wa_path = get_weakauras_saved_variables_path()
        
    def write_auras(self, auras):
        """Write multiple auras to the WeakAuras.lua file"""
        lua_content = self._generate_lua_content(auras)
        
        # Handle backup file
        backup_path = self.wa_path + '.backup'
        if os.path.exists(self.wa_path):
            if os.path.exists(backup_path):
                os.remove(backup_path)
            os.rename(self.wa_path, backup_path)
        
        # Write the new content
        with open(self.wa_path, 'w', encoding='utf-8') as f:
            f.write(lua_content)
            print(f"Successfully wrote WeakAuras to: {self.wa_path}")
            
    def _generate_lua_content(self, auras):
        """Generate the full Lua file content"""
        displays_content = []
        
        for aura in auras:
            # Convert the aura to Lua format
            aura_lua = self._to_lua_table(aura)
            displays_content.append(f'["{aura["id"]}"] = {aura_lua}')
        
        return f"""WeakAurasSaved = {{
    ["displays"] = {{
        {",".join(displays_content)}
    }},
    ["dbVersion"] = 78,
    ["minimap"] = {{ ["hide"] = false }},
    ["login_squelch_time"] = 10,
    ["lastArchiveClear"] = 1731794042,
    ["historyCutoff"] = 730,
    ["migrationCutoff"] = 730,
    ["registered"] = {{}},
    ["editor_font_size"] = 12,
    ["lastUpgrade"] = 1731794044,
    ["features"] = {{}},
    ["dynamicIconCache"] = {{}},
    ["editor_tab_spaces"] = 4
}}"""

    def _to_lua_table(self, data):
        """Convert a Python dict to a Lua table string"""
        if isinstance(data, dict):
            parts = []
            for k, v in data.items():
                if k == "triggers":
                    # Special handling for triggers
                    trigger_parts = []
                    main_trigger = v.get(1, {})
                    trigger_parts.append(self._to_lua_table(main_trigger))
                    
                    # Add non-numeric keys
                    for tk, tv in v.items():
                        if not isinstance(tk, int):
                            trigger_parts.append(f'["{tk}"] = {self._to_lua_table(tv)}')
                    
                    parts.append(f'["{k}"] = {{{",".join(trigger_parts)}}}')
                else:
                    # Normal key-value handling
                    if isinstance(k, str):
                        k = f'["{k}"]'
                    parts.append(f'{k} = {self._to_lua_table(v)}')
            return '{' + ','.join(parts) + '}'
        elif isinstance(data, list):
            return '{' + ','.join(self._to_lua_table(x) for x in data) + '}'
        elif isinstance(data, bool):
            return 'true' if data else 'false'
        elif isinstance(data, (int, float)):
            return str(data)
        elif isinstance(data, str):
            return f'"{data}"'
        elif data is None:
            return 'nil'
        else:
            raise ValueError(f"Unsupported type: {type(data)}")