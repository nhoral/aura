
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party_4_is_hurt"] = {
    id = "Party 4 Is Hurt",
    uid = "FhlmFnl7cvf",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 36,
    yOffset = -6,
    width = 5,
    height = 5,
    frameStrata = 1,
    barColor = {
        1,
        0,
        0,
        1,
    },
    barColor2 = {
        1,
        0,
        0,
        1,
    },
    backgroundColor = {
        1,
        0,
        0,
        1,
    },
    texture = "Solid",
    textureSource = "LSM",
    triggers = {
        activeTriggerMode = 1,
        disjunctive = "all",
        {
            trigger = {
                debuffType = "HELPFUL",
                type = "custom",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                use_unit = true,
                duration = "1",
                custom_hide = "timed",
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.5 then
        aura_env.last = GetTime()
        
        local numGroup = GetNumGroupMembers()
        if (numGroup < 5) then
            allstates[""] = allstates[""] or {show = false}
            allstates[""].s5how = false
            allstates[""].changed = true
            return true
        end
        
        local hp,hpMax = UnitHealth("party4"),UnitHealthMax("party4")
        
        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead("party4")) then
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
                custom_type = "stateupdate",
                check = "update",
                unevent = "auto",
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
        use_never = false,
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {
                WARLOCK = true,
            },
            single = "WARLOCK",
        },
        size = {
            multi = {},
        },
        use_spellknown = false,
        level_operator = {
            "~=",
        },
        level = {
            "120",
        },
        use_level = false,
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
