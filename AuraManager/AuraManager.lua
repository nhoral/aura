local ADDON_NAME, ns = ...
local WEAKAURAS_VERSION = 78  -- Match WeakAuras internal version

-- Create a frame to handle events
local frame = CreateFrame("Frame")
local isWeakAurasLoaded = false
local pendingExport = false

-- Enhanced WeakAuras readiness check
local function IsWeakAurasReady()
    return WeakAuras and WeakAuras.Add and WeakAuras.IsLoginFinished() and true or false
end

-- Version compatibility check
local function IsVersionCompatible()
    if not WeakAuras.InternalVersion then return false end
    local version = WeakAuras.InternalVersion()
    if version ~= WEAKAURAS_VERSION then
        print(string.format("ERROR: Version mismatch. Expected %d, got %d", 
            WEAKAURAS_VERSION, version))
        return false
    end
    return true
end

-- Function to load an aura definition from a file
local function LoadAuraDefinition(filename)
    local auraDefinition = ns.auras[filename]
    if not auraDefinition then
        print("ERROR: Failed to load aura definition from " .. filename)
        return nil
    end
    
    -- Ensure basic data structure
    auraDefinition.load = auraDefinition.load or {}
    auraDefinition.load.class = auraDefinition.load.class or { multi = {} }
    auraDefinition.load.spec = auraDefinition.load.spec or { multi = {} }
    
    -- Add any missing required fields
    auraDefinition.parent = nil  -- Ensure no parent reference
    auraDefinition.authorOptions = auraDefinition.authorOptions or {}
    auraDefinition.information = auraDefinition.information or {}
    
    return auraDefinition
end

-- Function to validate load conditions
local function ValidateLoadConditions(aura)
    if aura.load then
        if aura.load.class and next(aura.load.class.multi) == nil then
            print("WARNING: Aura '" .. aura.id .. "' has empty class condition")
        end
        if aura.load.spec and next(aura.load.spec.multi) == nil then
            print("WARNING: Aura '" .. aura.id .. "' has empty spec condition")
        end
    end
end

-- Function to export our auras to WeakAuras
local function ExportToWeakAuras()
    print("DEBUG: Starting export")
    
    -- Check WeakAuras readiness
    if not IsWeakAurasReady() then
        print("ERROR: WeakAuras is not fully loaded yet. Please try again in a moment.")
        return
    end
    
    -- Check version compatibility
    if not IsVersionCompatible() then
        return
    end
    
    -- Handle combat lockdown
    if InCombatLockdown() then
        print("Export queued for after combat")
        pendingExport = true
        frame:RegisterEvent("PLAYER_REGEN_ENABLED")
        return
    end
    
    -- Verify ns.aura_list exists
    if not ns.aura_list then
        print("ERROR: No auras found in ns.aura_list!")
        return
    end
    
    -- Setup progress tracking
    local total = #ns.aura_list
    local current = 0
    
    print("DEBUG: Found " .. total .. " auras to export")
    
    -- Load and export each aura
    for _, filename in ipairs(ns.aura_list) do
        local aura = LoadAuraDefinition(filename)
        if aura then
            current = current + 1
            print(string.format("Progress: %d/%d - %s", current, total, aura.id))
            
            ValidateLoadConditions(aura)
            
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

-- Event handling
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        -- Wait a short bit for WeakAuras to finish initialization
        C_Timer.After(2, function()
            if IsWeakAurasReady() then
                isWeakAurasLoaded = true
                print(ADDON_NAME .. " is ready to use!")
            else
                print(ADDON_NAME .. ": WeakAuras not fully initialized yet. Please wait a moment.")
            end
        end)
    elseif event == "PLAYER_REGEN_ENABLED" and pendingExport then
        pendingExport = false
        self:UnregisterEvent("PLAYER_REGEN_ENABLED")
        ExportToWeakAuras()
    end
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