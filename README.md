# aura

This project is a tool to extract auras from a WeakAuras.lua file to be edited outside of the World of Warcraft client.

It models the WeakAuras.lua file as a JSON schema and allows you to edit the auras in a text editor or IDE.

## Constraints
- The structure of the WeakAuras.lua is not always valid Lua code.
- The WeakAuras.lua file contains a lot of nested tables with no documentation and a very particular structure.

## Context
- WeakAuras is a popular addon for World of Warcraft that allows you to create complex auras.
- Auras are imported in the game via the WeakAuras save file at "C:\Program Files (x86)\World of Warcraft\_retail_\WTF\Account\YABUCHI\SavedVariables\WeakAuras.lua"
- WeakAuras github repository: https://github.com/WeakAuras/WeakAuras2


