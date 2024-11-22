local ADDON_NAME, ns = ...

-- Create a frame to handle events
local frame = CreateFrame("Frame")
local isWeakAurasLoaded = false

-- Function to check if WeakAuras is ready
local function IsWeakAurasReady()
    return WeakAuras and WeakAuras.Add and true or false
end

-- Function to load an aura definition from a file
local function LoadAuraDefinition(filename)
    local auraDefinition = ns.auras[filename]
    if not auraDefinition then
        print("ERROR: Failed to load aura definition from " .. filename)
        return nil
    end
    return auraDefinition
end

-- Function to export our auras to WeakAuras
local function ExportToWeakAuras()
    print("DEBUG: Starting export")
    
    -- Verify WeakAuras is ready
    if not IsWeakAurasReady() then
        print("ERROR: WeakAuras is not fully loaded yet. Please try again in a moment.")
        return
    end
    
    -- Verify ns.aura_list exists
    if not ns.aura_list then
        print("ERROR: No auras found in ns.aura_list!")
        return
    end
    
    print("DEBUG: Found", #ns.aura_list, "auras to export")
    
    -- Load and export each aura
    for _, filename in ipairs(ns.aura_list) do
        local aura = LoadAuraDefinition(filename)
        if aura then
            print("DEBUG: Exporting aura:", aura.id)
            local success, err = pcall(function()
                -- Delete existing aura if it exists
                if WeakAuras.GetData(aura.id) then
                    print("DEBUG: Found existing WeakAura '" .. aura.id .. "', replacing it...")
                    WeakAuras.Delete(aura.id)
                end
                
                -- Add the new aura
                WeakAuras.Add(aura)
            end)
            
            if not success then
                print("ERROR during export of '" .. aura.id .. "': " .. tostring(err))
            else
                print("DEBUG: Successfully exported '" .. aura.id .. "'")
            end
        end
    end
    
    -- Update WeakAuras display
    if WeakAuras.ScanForLoads then
        WeakAuras.ScanForLoads()
    end
    
    print("DEBUG: Export complete")
end

-- Wait for player login
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
    -- Wait a short bit for WeakAuras to finish initialization
    C_Timer.After(2, function()
        if IsWeakAurasReady() then
            isWeakAurasLoaded = true
            print(ADDON_NAME .. " is ready to use!")
        else
            print(ADDON_NAME .. ": WeakAuras not fully initialized yet. Please wait a moment.")
        end
    end)
end)

-- Register slash commands
SLASH_AURAMANAGER1 = "/am"
SLASH_AURAMANAGER2 = "/auramanager"
SlashCmdList["AURAMANAGER"] = function(msg)
    if msg == "export" then
        print("DEBUG: Export command received")
        ExportToWeakAuras()
    else
        print("AuraManager commands:")
        print("  /am export - Export auras to WeakAuras")
    end
end