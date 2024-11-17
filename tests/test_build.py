import os
from scripts.build_weakauras import build_weakauras

def test_build_weakauras():
    """Test building WeakAuras.lua from aura files"""
    
    # Set up test output file
    output_file = "test_WeakAuras.lua"
    
    # Run the build
    build_weakauras("auras", output_file)
    
    # Verify the output file exists and has correct structure
    assert os.path.exists(output_file)
    
    with open(output_file) as f:
        content = f.read()
        assert 'WeakAurasSaved = {' in content
        assert '"displays"' in content
        # Add more structure checks as needed
    
    # Clean up
    os.remove(output_file)
