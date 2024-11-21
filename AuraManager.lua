local ADDON_NAME, ns = ...

-- Create a frame to handle events
local frame = CreateFrame("Frame")
local isWeakAurasLoaded = false

-- Function to check if WeakAuras is fully loaded
local function IsWeakAurasReady()
    return WeakAuras and 
           WeakAuras.IsLoginFinished and 
           WeakAuras.IsLoginFinished() and 
           WeakAuras.Add and 
           WeakAuras.GetData
end

-- Function to load an aura definition
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
    if not IsWeakAurasReady() then
        print("ERROR: WeakAuras is not fully loaded yet. Please try again in a moment.")
        return
    end
    
    print("DEBUG: Starting export")
    
    -- List of aura files to load
    local auraFiles = {
        "enemy_loose",
        "casting"
    }
    
    -- Load and export each aura
    for _, filename in ipairs(auraFiles) do
        local aura = LoadAuraDefinition(filename)
        if aura then
            local success, err = pcall(function()
                if WeakAuras.GetData(aura.id) then
                    print("DEBUG: Found existing WeakAura '" .. aura.id .. "', replacing it...")
                    
                    -- First remove from WeakAuras display
                    if WeakAuras.regions and WeakAuras.regions[aura.id] then
                        WeakAuras.regions[aura.id]:Cancel()
                    end
                    
                    -- Delete using protected call
                    local deleteSuccess = pcall(function()
                        WeakAuras.Delete(aura.id)
                    end)
                    
                    if not deleteSuccess then
                        print("DEBUG: Delete operation failed, trying alternative approach")
                        if WeakAuras.data then
                            WeakAuras.data[aura.id] = nil
                        else
                            print("DEBUG: WeakAuras.data not available, skipping cleanup")
                        end
                    end
                end
                
                -- Always add after potential deletion
                WeakAuras.Add(aura)
                if WeakAuras.ScanForLoads then
                    WeakAuras.ScanForLoads()
                end
            end)
            
            if not success then
                print("ERROR during export of '" .. aura.id .. "': " .. tostring(err))
            else
                print("DEBUG: Successfully created/updated WeakAura '" .. aura.id .. "'")
            end
        end
    end
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
        ExportToWeakAuras()
    else
        print(ADDON_NAME .. " commands:")
        print("  /am export - Export auras to WeakAuras")
    end
end