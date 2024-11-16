from aura_manager import AuraManager
from examples.basic_aura import create_basic_aura

def main():
    # Create the aura
    aura = create_basic_aura()
    
    # Initialize the manager
    manager = AuraManager()
    
    # Write the aura
    manager.write_aura(aura)

if __name__ == "__main__":
    main()
