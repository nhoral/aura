
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_shooting"] = {
    id = "Player Shooting",
    uid = "4P9BfbFABfk",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 104,
    yOffset = 80,
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
        disjunctive = "all",
        activeTriggerMode = 1,
        {
            trigger = {
                customVariables = "{}",
                type = "unit",
                custom_hide = "timed",
                subeventSuffix = "_CAST_START",
                unevent = "auto",
                duration = "1",
                event = "Swing Timer",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(event, arg1, arg2, arg3)
    aura_env = aura_env or {}
    
    if (event == "START_AUTOREPEAT_SPELL") then
        aura_env.shooting = true
        aura_env.shotStart = GetTime()
    elseif (event == "STOP_AUTOREPEAT_SPELL") then
        aura_env.shooting = false
        aura_env.shotStart = nil
    elseif (event == "UNIT_SPELLCAST_SUCCEEDED") then
        aura_env.shotStart = GetTime()
    end
    
    if (aura_env.shooting and aura_env.shotStart ~= nil) then
        if (GetTime() - aura_env.shotStart) < 1 then    
            return true   
        end
    end
    
    return false
end]],
                spellIds = {},
                custom_type = "event",
                check = "update",
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                use_inverse = false,
                events = "START_AUTOREPEAT_SPELL, STOP_AUTOREPEAT_SPELL, UNIT_SPELLCAST_START, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_DELAYED, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED, COMBAT_LOG_EVENT_UNFILTERED",
                use_hand = true,
                hand = "ranged",
                remaining_operator = "<",
                remaining = "0.2",
                use_remaining = true,
            },
            untrigger = {
                custom = [[function()
    return not aura_env.isTriggered
end]],
            },
        },
    },
    conditions = {},
    load = {
        use_level = false,
        talent = {
            multi = {},
        },
        class = {
            multi = {
                WARLOCK = true,
            },
            single = "WARLOCK",
        },
        use_spellknown = false,
        zoneIds = "",
        level_operator = {
            "~=",
        },
        use_never = false,
        level = {
            "120",
        },
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
