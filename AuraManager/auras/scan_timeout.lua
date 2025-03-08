
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scan_timeout"] = {
    id = "Scan Timeout",
    uid = "w(vA4)2g1PK",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -648,
    yOffset = -331,
    width = 3,
    height = 3,
    frameStrata = 1,
    barColor = {
        0,
        1,
        0,
        1,
    },
    barColor2 = {
        0,
        1,
        0,
        1,
    },
    backgroundColor = {
        0,
        1,
        0,
        1,
    },
    texture = "Solid",
    textureSource = "LSM",
    triggers = {
        activeTriggerMode = -10,
        {
            trigger = {
                type = "custom",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Chat Message",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_unit = true,
                events = "CVAR_UPDATE",
                custom = [[function(allstates)
    -- Throttle the check for perf
    if not aura_env.last or GetTime() - aura_env.last > 0.1 then
        -- Set the last time
        aura_env.last = GetTime()
        local scanStart = aura_env.scanStart or 0
        local scanning = GetCVar("WeakAurasScannerToggle")
        
        if scanning == nil then
            scanning = "OFF"
            RegisterCVar("WeakAurasScannerToggle", "OFF")
        end
        
        if scanning ~= "OFF" and scanStart == 0 then
            print("setting scan start")
            aura_env.scanStart = GetTime()
        elseif scanning ~= "OFF" and scanStart ~= 0 then
            if (GetTime() - scanStart) > 3 then
                
                _G.ScannerData = {
                    lowestHealth = 2000000000,
                    skullGUID = nil,  -- Track which GUID should be skull
                    skullRange = 200,
                    marks = {}        -- Track other marks
                }
                
                aura_env.scanStart = 0
                print("Resetting State and turning CVAR OFF")
                SetCVar("WeakAurasScannerToggle", "OFF")
            end
        end
        
        return true
    end
    return false
end]],
                check = "update",
                custom_type = "stateupdate",
                custom_hide = "timed",
            },
            untrigger = {
                custom = "",
            },
        },
    },
    conditions = {},
    load = {
        talent = {
            multi = {},
        },
        class = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        size = {
            multi = {},
        },
        use_never = true,
        zoneIds = "",
        role = {
            multi = {},
        },
    },
    animation = {
        start = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
        main = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
        finish = {
            type = "none",
            easeStrength = 3,
            duration_type = "seconds",
            easeType = "none",
        },
    },
    subRegions = {
        {
            type = "subbackground",
        },
        {
            type = "subforeground",
        },
    },
    information = {},
}
