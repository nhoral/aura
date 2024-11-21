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

-- Function to export our auras to WeakAuras
local function ExportToWeakAuras()
    if not IsWeakAurasReady() then
        print("ERROR: WeakAuras is not fully loaded yet. Please try again in a moment.")
        return
    end
    
    print("DEBUG: Starting export")
    
    -- Define our auras
    local auras = {
        -- Enemy Loose aura
        {
            id = "Enemy Loose",
            uid = WeakAuras.GenerateUniqueID(),
            regionType = "icon",
            internalVersion = WeakAuras.InternalVersion(),
            iconSource = 0,
            color = { 0.992156922, 1, 0.988235354, 1 },
            yOffset = -135.560001,
            anchorPoint = "CENTER",
            cooldown = false,
            cooldownSwipe = false,
            cooldownEdge = false,
            cooldownTextDisabled = true,
            icon = true,
            triggers = {
                {
                    trigger = {
                        duration = "1",
                        names = {},
                        debuffType = "HELPFUL",
                        type = "custom",
                        unevent = "auto",
                        subeventSuffix = "_CAST_START",
                        unit = "player",
                        event = "Health",
                        customStacks = "function() return aura_env.count end\n",
                        custom_type = "stateupdate",
                        custom = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        aura_env.last = GetTime()\n        local enemyIndex = 0\n        for i = 1, 40 do\n            local unit = \"nameplate\"..i\n            local isTanking = UnitDetailedThreatSituation(\"player\", unit)\n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        return true\n    end\nend",
                        spellIds = {},
                        use_unit = true,
                        check = "update",
                        use_absorbMode = true,
                        subeventPrefix = "SPELL",
                        customVariables = "{\n  stacks = true,\n}"
                    },
                    untrigger = {}
                },
                activeTriggerMode = -10
            },
            load = {
                use_never = false,
                talent = { multi = {} },
                size = { multi = {} },
                spec = { multi = {} },
                class = {
                    single = "WARRIOR",
                    multi = { ["WARRIOR"] = true }
                },
                zoneIds = ""
            },
            animation = {
                start = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                },
                main = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                },
                finish = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                }
            },
            conditions = {},
            config = {},
            displayIcon = 134140,
            information = {
                forceEvents = true,
                ignoreOptionsEventErrors = true
            },
            width = 30,
            height = 30,
            frameStrata = 1,
            selfPoint = "CENTER",
            xOffset = 435.500044,
            zoom = 0,
            subRegions = {
                { type = "subbackground" },
                {
                    text_shadowXOffset = 0,
                    text_text = "%s",
                    text_shadowColor = { 0, 0, 0, 1 },
                    text_selfPoint = "AUTO",
                    text_automaticWidth = "Auto",
                    text_fixedWidth = 64,
                    text_justify = "CENTER",
                    rotateText = "NONE",
                    type = "subtext",
                    text_color = { 1, 1, 1, 1 },
                    text_font = "Friz Quadrata TT",
                    text_shadowYOffset = 0,
                    text_wordWrap = "WordWrap",
                    text_fontType = "OUTLINE",
                    text_anchorPoint = "CENTER",
                    text_fontSize = 24,
                    text_visible = true
                }
            }
        },
        -- Casting aura
        {
            id = "Casting",
            uid = WeakAuras.GenerateUniqueID(),
            regionType = "icon",
            internalVersion = WeakAuras.InternalVersion(),
            iconSource = 0,
            color = { 1, 1, 1, 1 },
            yOffset = -135.564271,
            anchorPoint = "CENTER",
            cooldown = false,
            cooldownSwipe = false,
            cooldownEdge = false,
            cooldownTextDisabled = true,
            icon = true,
            triggers = {
                {
                    trigger = {
                        type = "unit",
                        subeventSuffix = "_CAST_START",
                        event = "Cast",
                        subeventPrefix = "SPELL",
                        spellIds = {},
                        use_unit = true,
                        unit = "player",
                        names = {},
                        debuffType = "HELPFUL"
                    },
                    untrigger = {}
                },
                activeTriggerMode = -10
            },
            load = {
                use_never = false,
                talent = { multi = {} },
                class = {
                    single = "WARLOCK",
                    multi = { ["WARLOCK"] = true }
                },
                spec = { multi = {} },
                size = { multi = {} }
            },
            animation = {
                start = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                },
                main = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                },
                finish = {
                    easeStrength = 3,
                    type = "none",
                    duration_type = "seconds",
                    easeType = "none"
                }
            },
            conditions = {
                {
                    check = {
                        trigger = 1,
                        variable = "show",
                        value = 1
                    },
                    changes = {
                        { property = "color" }
                    }
                },
                {
                    check = {
                        trigger = 1,
                        variable = "show",
                        value = 0
                    },
                    changes = {
                        {
                            value = { 1, 1, 1, 0 },
                            property = "color"
                        }
                    }
                }
            },
            displayIcon = 136099,
            width = 30,
            height = 30,
            frameStrata = 1,
            selfPoint = "CENTER",
            xOffset = 466.177770
        }
    }
    
    -- Export each aura
    for _, aura in ipairs(auras) do
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
        print("  /am export - Test aura structure and export")
    end
end