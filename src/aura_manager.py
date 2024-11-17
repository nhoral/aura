class AuraManager:
    def __init__(self, output_path):
        self.output_path = output_path

    def write_auras(self, auras):
        lua_content = self._generate_lua_content(auras)
        with open(self.output_path, 'w') as f:
            f.write(lua_content)

    def _generate_lua_content(self, auras):
        displays_content = []
        for aura in auras:
            if "id" not in aura:
                print(f"Warning: Aura missing id: {aura}")
                continue
            
            aura_lua = self._to_lua_table(aura)
            displays_content.append(f'["{aura["id"]}"] = {aura_lua}')

        return f"""WeakAurasSaved = {{
        ["displays"] = {{
            {','.join(displays_content)}
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
        if isinstance(data, dict):
            parts = []
            for k, v in data.items():
                if k == "id":  # Skip id as it's used for the outer structure
                    continue
                if isinstance(k, str):
                    k = f'["{k}"]'
                elif isinstance(k, int):
                    k = f'[{k}]'
                parts.append(f'{k} = {self._to_lua_table(v)}')
            return '{' + ', '.join(parts) + '}'
        elif isinstance(data, list):
            # Handle array-style tables
            if len(data) == 0:
                return '{}'
            # Format triggers specially
            if isinstance(data[0], dict) and "trigger" in data[0]:
                parts = []
                for i, v in enumerate(data, 1):
                    parts.append(f'[{i}] = {self._to_lua_table(v)}')
                return '{' + ', '.join(parts) + '}'
            # Format color arrays
            elif all(isinstance(x, (int, float)) for x in data):
                return '{\n' + ',\n'.join(str(x) for x in data) + ',\n}'
            return '{' + ', '.join(self._to_lua_table(x) for x in data) + '}'
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