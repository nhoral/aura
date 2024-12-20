I have a World of Warcraft addon project that consists of two main parts:

1. A Python generator (using lupa) that:
- Reads WeakAuras saved variables from WoW
- Transforms auras using a sample template for consistent visual styling
- Preserves each aura's original trigger/condition logic
- Arranges auras in a 10-column grid with 1px spacing
- Outputs individual Lua files for each aura

2. A WoW addon that:
- Loads the generated aura files
- Provides /am export command
- Safely exports auras to WeakAuras while:
  - Checking WeakAuras version compatibility
  - Handling combat lockdown
  - Validating load conditions
  - Managing existing auras

Each generated aura contains:
Core fields:
- id: Aura name
- uid: Unique identifier
- regionType: "aurabar"
- internalVersion: WeakAuras version number

Visual settings (from template):
- width/height: 5x5 pixels
- barColor/barColor2/backgroundColor: Color settings
- texture: "Solid"
- anchorPoint/selfPoint: "CENTER"
- xOffset/yOffset: Grid position calculations

Functional settings (preserved from original):
- triggers: Show/hide conditions
- conditions: State-based modifications
- load: Class/spec requirements
- actions: On show/hide/init actions

The project maintains visual consistency across auras while preserving their individual functionality. Key files are the aura generator (Python) and AuraManager.lua (WoW addon).

## Context
- WeakAuras github repository: https://github.com/WeakAuras/WeakAuras2


I am making a python script that checks the screen at specific positions for specific colors.  When detecting those colors, it presses keys.

Context:
- Here is a layout file that can be used to resolve which positions refer to specific conditions: @layout.json 
- Here is my previous project that used image analysis.  I have since simplifed the on screen displays to just be a specific color.  This is to make the comparison more efficient. @https://github.com/nhoral/python-loop 
- Like the example project, it needs to consider resolution and mac retina display.  If you have suggestions on how to normalize the resolution handling, let me know

Install:
pip install -r requirements.txt