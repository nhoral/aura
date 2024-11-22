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
        
        # Load sample template
        sample_path = Path(__file__).parent / "templates" / "sample.lua"
        print(f"Loading sample template from: {sample_path}")
        
        # Read and execute the sample file content
        with open(sample_path, 'r', encoding='utf-8') as f:
            sample_content = f.read()
            # Extract just the table content between ns.auras["sample"] = { ... }
            table_start = sample_content.find('ns.auras["sample"] = {') + len('ns.auras["sample"] = ')
            table_end = sample_content.rfind('}')
            table_content = sample_content[table_start:table_end+1]
            
            # Wrap the table content for evaluation
            wrapped_content = f"return {table_content}"
            
            # Execute and get the result
            result = self.lua.execute(wrapped_content)
            # Create a new parser instance for converting Lua to Python
            sample_parser = LuaParser(str(sample_path))
            self.sample_template = sample_parser._lua_to_python(result)

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

    def _transform_aura_data(self, name: str, data: Dict, index: int) -> Dict:
        """Transform WeakAuras data into our addon format"""
        # Grid settings
        COLUMNS = 10
        AURA_WIDTH = 5   # Width of each aura
        AURA_HEIGHT = 5  # Height of each aura
        SPACING = 1      # 1 pixel spacing between auras
        
        # Calculate total size needed for each grid cell
        CELL_WIDTH = AURA_WIDTH + SPACING
        CELL_HEIGHT = AURA_HEIGHT + SPACING
        
        # Calculate grid position
        row = index // COLUMNS
        col = index % COLUMNS
        
        result = {
            # Core identification
            "id": name,
            "uid": data.get("uid", "WeakAuras.GenerateUniqueID()"),
            "internalVersion": data.get("internalVersion", "WeakAuras.InternalVersion()"),
            "regionType": "aurabar",  # Force aurabar type
            
            # Position/Size (from sample, but with calculated offsets)
            "anchorPoint": self.sample_template.get("anchorPoint", "CENTER"),
            "selfPoint": self.sample_template.get("selfPoint", "CENTER"),
            "xOffset": col * CELL_WIDTH,   # Offset by column * (width + spacing)
            "yOffset": -row * CELL_HEIGHT, # Offset by row * (height + spacing)
            "width": AURA_WIDTH,
            "height": AURA_HEIGHT,
            "frameStrata": self.sample_template.get("frameStrata", 1),
            
            # Aurabar-specific visual settings (from sample)
            "barColor": self.sample_template.get("barColor", [1, 0, 0, 1]),
            "barColor2": self.sample_template.get("barColor2", [1, 0, 0, 1]),
            "backgroundColor": self.sample_template.get("backgroundColor", [1, 0, 0, 1]),
            "texture": self.sample_template.get("texture", "Solid"),
            "textureSource": self.sample_template.get("textureSource", "LSM"),
            
            # Functional settings (from original aura)
            "triggers": data.get("triggers", {}),
            "conditions": data.get("conditions", {}),
            "load": data.get("load", {}),
            
            # Required additional settings
            "animation": self.sample_template.get("animation", {}),
            "subRegions": self.sample_template.get("subRegions", [
                {"type": "subbackground"},
                {"type": "subforeground"}
            ]),
            "information": {}
        }
        
        return result

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
            
            # Sort aura names and use enumeration for index
            sorted_auras = sorted(displays.items())
            for index, (aura_name, aura_data) in enumerate(sorted_auras):
                print(f"\nProcessing aura: {aura_name}")
                file_name = aura_name.lower().replace(" ", "_") + ".lua"
                output_file = self.output_path / file_name
                
                # Transform the data into our format
                transformed_data = self._transform_aura_data(aura_name, aura_data, index)
                
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
