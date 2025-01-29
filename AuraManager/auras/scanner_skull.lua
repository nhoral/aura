
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_skull"] = {
    id = "Scanner Skull",
    uid = "RmdkUoznpBf",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 108,
    yOffset = 72,
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
                customVariables = [[{
  stacks = true,
}]],
                type = "custom",
                custom_hide = "timed",
                subeventSuffix = "_CAST_START",
                unevent = "auto",
                duration = "1",
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(event, nameplate)
    local unit = ""
    if event == "PLAYER_TARGET_CHANGED" then
        unit = "target"
    elseif event == "NAME_PLATE_UNIT_ADDED" then
        unit = nameplate
    end
    
    -- Only process while scanning
    local scanning = GetCVar("WeakAurasScannerToggle")
    if scanning == "OFF" or scanning == nil then return false end
    
    -- Initialize global scan data if needed
    _G.ScannerData = _G.ScannerData or {
        lowestHealth = 2000000000,
        skullGUID = nil,  -- Track which GUID should be skull
        skullRange = 200,
        marks = {}        -- Track other marks
    }
    
    -- Process current target
    if UnitExists(unit) and UnitCanAttack("player", unit) then
        local guid = UnitGUID(unit)
        local health = UnitHealth(unit)
        local isSkull = GetRaidTargetIndex(unit) == 8
        
        local range = 100
        if (WeakAuras.CheckRange(unit, 5, "<=")) then
            range = 5
        elseif (WeakAuras.CheckRange(unit, 10, "<=")) then
            range = 10
        elseif (WeakAuras.CheckRange(unit, 15, "<=")) then
            range = 15
        elseif (WeakAuras.CheckRange(unit, 20, "<=")) then
            range = 20
        elseif (WeakAuras.CheckRange(unit, 25, "<=")) then
            range = 25
        elseif (WeakAuras.CheckRange(unit, 30, "<=")) then
            range = 30
        elseif (WeakAuras.CheckRange(unit, 35, "<=")) then
            range = 35
        end
        
        local lowerHealth = health < _G.ScannerData.lowestHealth
        local equalHealth = health <= _G.ScannerData.lowestHealth
        local sameHealthLowerRange = equalHealth and range < _G.ScannerData.skullRange
        print(range)
        print(_G.ScannerData.skullRange)
        if lowerHealth or sameHealthLowerRange then
            _G.ScannerData.lowestHealth = health
            _G.ScannerData.skullRange = range
            _G.ScannerData.skullGUID = guid
            
            if not isSkull then
                SetRaidTarget(unit, 8)
                SetCVar("WeakAurasScannerSkullSeen", "1")
            end
        end
        
        if isSkull then
            SetCVar("WeakAurasScannerSkullSeen", "1")
        end
        
        return true
    end
end]],
                spellIds = {},
                custom_type = "event",
                check = "update",
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
                events = "PLAYER_TARGET_CHANGED",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        talent = {
            multi = {},
        },
        class = {
            multi = {
                WARRIOR = true,
            },
            single = "WARRIOR",
        },
        zoneIds = "",
        use_never = false,
        spec = {
            multi = {},
        },
        size = {
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
