
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner"] = {
    id = "Scanner",
    uid = "Gf8InAovkXp",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
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
                subeventSuffix = "_CAST_START",
                unevent = "auto",
                duration = "1",
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(allstates, event)
    -- Initialize aura environment
    if not aura_env then aura_env = {} end
    if not aura_env.lowestHealth then aura_env.lowestHealth = 1 end
    
    local currentGUID = UnitGUID("target")
    if not currentGUID then return false end
    
    -- Get the scanning GUID from CVar
    local scanningGUID = GetCVar("WeakAurasScannerToggle")
    if scanningGUID == "NO_TARGET" then 
        print("No Target on player target change")
        
        -- Reset stored values when scan ends
        aura_env.lowestHealth = 2
        return false 
    end
    
    -- Get current target's health
    local health = UnitHealth("target") / UnitHealthMax("target")
    
    -- Check if this is the lowest health we've seen
    if health < aura_env.lowestHealth then
        aura_env.lowestHealth = health
        local iconIndex = GetRaidTargetIndex("target")
        if iconIndex ~= 8 then
            SetRaidTarget("target", 8)  -- Skull
        end
    end
    
    -- If we've found our initial target again, end scanning
    if currentGUID == scanningGUID then
        print("Setting Cvar to No Target")
        SetCVar("WeakAurasScannerToggle", "NO_TARGET")
        return false
    end
    
    return true
end]],
                spellIds = {},
                custom_type = "stateupdate",
                check = "update",
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
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
        use_never = true,
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
