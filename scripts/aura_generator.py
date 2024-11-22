from pathlib import Path
import sys
from typing import Dict, Any
from collections import OrderedDict
from lupa import LuaRuntime

# Add the project root to Python path
sys.path.append(str(Path(__file__).parent.parent))

from src.parser.lua_parser import LuaParser

class AuraGenerator:
    def __init__(self):
        # Fixed paths
        self.wow_path = Path(r"c:\Program Files (x86)\World of Warcraft\_retail_")
        self.weakauras_path = self.wow_path / "WTF" / "Account" / "YABUCHI" / "SavedVariables" / "WeakAuras.lua"
        self.output_path = self.wow_path / "Interface" / "AddOns" / "AuraManager" / "auras"
        print(f"WeakAuras path: {self.weakauras_path}")
        print(f"Output path: {self.output_path}")
        self.parser = LuaParser(str(self.weakauras_path))
        self.lua = LuaRuntime(unpack_returned_tuples=True)
        
    def _validate_lua(self, lua_code: str) -> bool:
        """Validate Lua code by attempting to load it"""
        try:
            # Add some context to make the code valid Lua
            test_code = """
                -- Mock WeakAuras functions
                WeakAuras = {
                    GenerateUniqueID = function() return "test_uid" end,
                    InternalVersion = function() return 1 end
                }
                
                -- Create a function that simulates the addon loading environment
                local function load_addon()
                    local addon_name, ns = "AuraManager", {}
                    """ + lua_code.replace("local ADDON_NAME, ns = ...", "--[[ addon env setup skipped ]]") + """
                    return ns
                end
                
                -- Run the test
                local result = load_addon()
                assert(result.auras, "Auras table not created")
            """
            
            # Try to execute the code
            self.lua.execute(test_code)
            return True
        except Exception as e:
            print(f"Lua validation error: {e}")
            print("Generated Lua code:")
            print("----------------------------------------")
            print(test_code)
            print("----------------------------------------")
            return False

    def _format_lua_value(self, value: Any, indent: int = 0) -> str:
        """Convert Python value back to Lua format with cleaner syntax"""
        if isinstance(value, (dict, OrderedDict)):
            if not value:  # Empty dict
                return "{}"
            
            lines = ["{"]
            for k, v in value.items():
                formatted_value = self._format_lua_value(v, indent + 4)
                
                # Handle key formatting
                if isinstance(k, str) and k.isdigit():
                    # Array-style numeric indices
                    key = ""  # No key needed for array elements
                elif isinstance(k, str) and k.isidentifier() and not k.startswith('_'):
                    # Use clean syntax for valid identifiers
                    key = k + " = "
                else:
                    # Use bracket syntax for other keys
                    key = f'["{k}"] = '
                
                lines.append(f"{' ' * (indent + 4)}{key}{formatted_value},")
            lines.append(f"{' ' * indent}}}")
            return "\n".join(lines)
        elif isinstance(value, bool):
            return str(value).lower()
        elif isinstance(value, (int, float)):
            return str(value)
        elif isinstance(value, str):
            # Handle function strings
            if value.strip().startswith("function"):
                # Clean up the function string: remove extra newlines and escape properly
                clean_func = value.strip().replace('\n', '\\n').replace('"', '\\"')
                return f'"{clean_func}"'
            # Handle WeakAuras function calls
            elif value.startswith("WeakAuras."):
                return value
            # Handle multiline strings with proper escaping
            elif "\n" in value:
                # Use Lua's [[ ]] syntax for multiline strings
                return f"[[{value}]]"
            # Regular strings
            else:
                return f'"{value}"'
        elif value is None:
            return "nil"
        elif isinstance(value, (list, tuple)):
            # Format arrays with simplified syntax
            elements = [self._format_lua_value(x) for x in value]
            if len(elements) <= 4 and all(len(str(e)) < 20 for e in elements):
                # Short arrays on one line
                return "{ " + ", ".join(elements) + " }"
            else:
                # Longer arrays with line breaks
                lines = ["{"]
                for element in elements:
                    lines.append(f"{' ' * (indent + 4)}{element},")
                lines.append(f"{' ' * indent}}}")
                return "\n".join(lines)
        return str(value)

    def _transform_aura_data(self, name: str, data: Dict) -> Dict:
        """Transform WeakAuras data into our addon format"""
        # Deep copy the data to avoid modifying the original
        transformed = data.copy()
        
        # Clean up any loadstring calls in triggers
        if "triggers" in transformed:
            for trigger in transformed["triggers"]:
                if "trigger" in trigger:
                    t = trigger["trigger"]
                    # Handle customStacks - preserve as raw function
                    if "customStacks" in t:
                        if isinstance(t["customStacks"], str) and 'loadstring(' in t["customStacks"]:
                            # Extract the raw function
                            func_str = t["customStacks"].split('loadstring("')[1].split('")()')[0]
                            # Unescape newlines and convert to raw function
                            t["customStacks"] = func_str.replace('\\n', '\n')
                    
                    # Handle custom - preserve as raw function
                    if "custom" in t:
                        if isinstance(t["custom"], str) and 'loadstring(' in t["custom"]:
                            # Extract the raw function
                            func_str = t["custom"].split('loadstring("')[1].split('")()')[0]
                            # Unescape newlines and convert to raw function
                            t["custom"] = func_str.replace('\\n', '\n')
                    
                    # Handle customVariables - preserve as raw string
                    if "customVariables" in t:
                        if isinstance(t["customVariables"], str):
                            t["customVariables"] = t["customVariables"].replace('\\n', '\n')
        
        return {
            "id": name,
            "uid": transformed.get("uid", "WeakAuras.GenerateUniqueID()"),
            "regionType": transformed.get("regionType", "icon"),
            "internalVersion": transformed.get("internalVersion", "WeakAuras.InternalVersion()"),
            "iconSource": transformed.get("iconSource", 0),
            "color": transformed.get("color", [1, 1, 1, 1]),
            "yOffset": transformed.get("yOffset", 0),
            "anchorPoint": transformed.get("anchorPoint", "CENTER"),
            "cooldown": transformed.get("cooldown", False),
            "cooldownSwipe": transformed.get("cooldownSwipe", False),
            "cooldownEdge": transformed.get("cooldownEdge", False),
            "cooldownTextDisabled": transformed.get("cooldownTextDisabled", True),
            "icon": transformed.get("icon", True),
            "triggers": transformed.get("triggers", {}),
            "load": transformed.get("load", {}),
            "animation": transformed.get("animation", {}),
            "conditions": transformed.get("conditions", {}),
            "config": transformed.get("config", {}),
            "displayIcon": transformed.get("displayIcon"),
            "information": transformed.get("information", {}),
            "width": transformed.get("width", 30),
            "height": transformed.get("height", 30),
            "frameStrata": transformed.get("frameStrata", 1),
            "selfPoint": transformed.get("selfPoint", "CENTER"),
            "xOffset": transformed.get("xOffset", 0),
            "zoom": transformed.get("zoom", 0),
            "subRegions": transformed.get("subRegions", [])
        }

    def _transform_triggers(self, triggers: Dict) -> Dict:
        """Transform triggers to match our format"""
        if not triggers:
            return {}
        
        # Convert numbered keys to array format
        result = []
        for i in range(1, len(triggers) + 1):
            if str(i) in triggers:
                result.append(triggers[str(i)])
        
        # Add activeTriggerMode if it exists
        if "activeTriggerMode" in triggers:
            result.append({"activeTriggerMode": triggers["activeTriggerMode"]})
        
        return result

    def _update_toc_file(self):
        """Update the TOC file with all generated aura files"""
        toc_path = self.output_path.parent / "AuraManager.toc"
        
        # Get all aura files
        aura_files = sorted(self.output_path.glob("*.lua"))
        
        # Read existing TOC content
        existing_content = []
        if toc_path.exists():
            with toc_path.open('r', encoding='utf-8') as f:
                existing_content = [line.strip() for line in f.readlines()]
        
        # Find where auras section starts/ends
        try:
            auras_start = next(i for i, line in enumerate(existing_content) if line.startswith("# Auras"))
            try:
                next_section = next(i for i, line in enumerate(existing_content[auras_start + 1:]) if line.startswith("# "))
                auras_end = auras_start + next_section
            except StopIteration:
                auras_end = len(existing_content)
        except StopIteration:
            # No auras section found, add it at the end
            existing_content.append("")
            existing_content.append("# Auras")
            auras_start = len(existing_content) - 1
            auras_end = len(existing_content)
        
        # Create new content
        new_content = existing_content[:auras_start + 1]  # Include "# Auras" line
        new_content.extend(f"auras/{file.name}" for file in aura_files)
        new_content.extend(existing_content[auras_end:])
        
        # Write updated TOC file
        with toc_path.open('w', encoding='utf-8') as f:
            f.write('\n'.join(new_content))
        
        print(f"Updated TOC file: {toc_path}")

    def generate_aura_files(self):
        """Parse WeakAuras.lua and generate individual aura files"""
        print(f"Writing aura files to: {self.output_path}")
        
        try:
            wa_export = self.parser.parse()
            displays = wa_export.addons["WeakAurasSaved"]["displays"]
            
            self.output_path.mkdir(parents=True, exist_ok=True)
            
            # Track all generated aura names for the export function
            generated_auras = []
            
            for aura_name, aura_data in displays.items():
                print(f"\nProcessing aura: {aura_name}")
                file_name = aura_name.lower().replace(" ", "_") + ".lua"
                output_file = self.output_path / file_name
                
                # Transform the data into our format
                transformed_data = self._transform_aura_data(aura_name, aura_data)
                
                # Generate the Lua code
                lua_code = f"""
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {{}}
ns.auras["{aura_name.lower().replace(" ", "_")}"] = {self._format_lua_value(transformed_data)}
"""
                
                # Validate the Lua code
                if not self._validate_lua(lua_code):
                    print(f"Error: Invalid Lua code generated for {aura_name}")
                    continue
                
                # Write the validated code to file
                with output_file.open('w', encoding='utf-8') as f:
                    f.write(lua_code)
                
                generated_auras.append(aura_name.lower().replace(" ", "_"))
                print(f"Generated aura file: {output_file}")
            
            # Generate the export list file
            export_file = self.output_path.parent / "aura_list.lua"
            with export_file.open('w', encoding='utf-8') as f:
                f.write("""local ADDON_NAME, ns = ...
ns.aura_list = {
""")
                for aura in sorted(generated_auras):
                    f.write(f'    "{aura}",\n')
                f.write("}\n")
            
            # Update the TOC file after generating all auras
            self._update_toc_file()
            
        except Exception as e:
            print(f"Error generating aura files: {e}")
            raise

def main():
    generator = AuraGenerator()
    generator.generate_aura_files()

if __name__ == "__main__":
    main()
