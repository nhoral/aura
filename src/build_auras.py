import os
import importlib.util
from aura_manager import AuraManager

def load_aura_from_file(file_path):
    """Load an aura definition from a Python file"""
    # Get the module name from the file name
    module_name = os.path.splitext(os.path.basename(file_path))[0]
    
    # Load the module
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    
    # Find the create_*_aura function
    create_func = None
    for attr in dir(module):
        if attr.startswith('create_') and attr.endswith('_aura'):
            create_func = getattr(module, attr)
            break
    
    if create_func is None:
        raise ValueError(f"No create_*_aura function found in {file_path}")
    
    # Call the function to get the aura definition
    return create_func()

def main():
    # Get all Python files in the auras directory
    auras_dir = os.path.join(os.path.dirname(__file__), 'auras')
    aura_files = [f for f in os.listdir(auras_dir) if f.endswith('.py') and f != '__init__.py']
    
    # Load all aura definitions
    auras = []
    for file_name in aura_files:
        file_path = os.path.join(auras_dir, file_name)
        try:
            aura = load_aura_from_file(file_path)
            auras.append(aura)
            print(f"Loaded aura from {file_name}")
        except Exception as e:
            print(f"Error loading {file_name}: {e}")
    
    if not auras:
        print("No auras found!")
        return
    
    # Write all auras to WeakAuras.lua
    manager = AuraManager()
    manager.write_auras(auras)
    print(f"Successfully wrote {len(auras)} auras to WeakAuras.lua")

if __name__ == "__main__":
    main()