
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_attacking"] = {
    id = "Player Attacking",
    uid = "6s63kxY6dhb",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 176,
    yOffset = 84,
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
                type = "custom",
                custom_hide = "timed",
                subeventSuffix = "_CAST_START",
                unevent = "auto",
                duration = "1",
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.5 then
        aura_env.last = GetTime()
        
        local playerAttacking = IsCurrentSpell(6603)
        
        if playerAttacking then
            allstates[""] = allstates[""] or {show = true}
            allstates[""].show = true
            allstates[""].changed = true
            return true
        else
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
            return true
        end
    end
end]],
                spellIds = {},
                custom_type = "stateupdate",
                check = "update",
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
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
