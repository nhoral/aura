from pathlib import Path

def main():
    # Setup paths
    auras_dir = Path(__file__).parent / 'aura_test'
    wow_path = Path(r'C:\Program Files (x86)\World of Warcraft\_retail_\WTF\Account\YABUCHI\SavedVariables\WeakAuras.lua')
    
    print(f"Reading auras from: {auras_dir}")
    
    # Read all aura files
    aura_contents = []
    for lua_file in sorted(auras_dir.glob('*.lua')):
        try:
            name = lua_file.stem
            content = lua_file.read_text(encoding='utf-8').strip()
            # Remove the aura name if it exists at the start of the content
            if content.startswith('{'):
                aura_content = content
            else:
                # Skip past the first = sign to get just the table content
                aura_content = content[content.find('=')+1:].strip()
            
            print(f"- Reading {name}")
            aura_contents.append(f'["{name}"] = {aura_content}')
        except Exception as e:
            print(f"Error reading {lua_file.name}: {e}")
    
    if not aura_contents:
        print("No auras found to build!")
        return
    
    # Create the displays section
    displays_section = ',\n        '.join(aura_contents)
    
    # Combine into WeakAuras.lua format
    output = (
        'WeakAurasSaved = {\n'
        '    ["dynamicIconCache"] = {},\n'
        '    ["editor_tab_spaces"] = 4,\n'
        '    ["displays"] = {\n'
        f'        {displays_section}\n'
        '    },\n'
        '    ["editor_font_size"] = 12,\n'
        '    ["login_squelch_time"] = 10,\n'
        '    ["lastArchiveClear"] = 1731794042,\n'
        '    ["minimap"] = {\n'
        '        ["hide"] = false,\n'
        '    },\n'
        '    ["historyCutoff"] = 730,\n'
        '    ["dbVersion"] = 78,\n'
        '    ["migrationCutoff"] = 730,\n'
        '    ["features"] = {},\n'
        '    ["registered"] = {},\n'
        '    ["lastUpgrade"] = 1731794044,\n'
        '    ["editor_theme"] = "Monokai",\n'
        '}'
    )
    
    # Write output
    try:
        wow_path.write_text(output, encoding='utf-8')
        print(f"\nSuccessfully wrote {len(aura_contents)} auras to:")
        print(wow_path)
    except Exception as e:
        print(f"\nError writing WeakAuras.lua: {e}")
        print("Make sure WoW is closed and you have write permissions to the file.")

if __name__ == "__main__":
    main()