
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party_1_health_under_70"] = {
    id = "Party 1 Health Under 70",
    uid = "xdNc3aDcOfl",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 188,
    yOffset = 88,
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
                debuffType = "HELPFUL",
                type = "custom",
                names = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                duration = "1",
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom_type = "stateupdate",
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.5 then
        aura_env.last = GetTime()
        
        local numGroup = GetNumGroupMembers()
        if (numGroup < 2) then
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
            return true
        end
        
        local hp,hpMax = UnitHealth("party1"),UnitHealthMax("party1")
        
        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead("party1")) then
            allstates[""] = allstates[""] or {show = true}
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
                check = "update",
                unevent = "auto",
                custom_hide = "timed",
                customVariables = "{}",
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
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        use_never = false,
        level = {
            "120",
        },
        level_operator = {
            "~=",
        },
        zoneIds = "",
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
