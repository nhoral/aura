
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party_3_health_under_70"] = {
    id = "Party 3 Health Under 70",
    uid = "hCrU8TLTAb)",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 44,
    yOffset = -8,
    width = 3,
    height = 3,
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
        disjunctive = "all",
        activeTriggerMode = 1,
        {
            trigger = {
                type = "custom",
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                unit = "player",
                event = "Health",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                use_unit = true,
                duration = "1",
                custom_type = "stateupdate",
                check = "update",
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.5 then
        aura_env.last = GetTime()
        
        local numGroup = GetNumGroupMembers()
        if (numGroup < 4) then
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
            return true
        end
        
        local hp,hpMax = UnitHealth("party3"),UnitHealthMax("party3")
        
        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead("party3")) then
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
                unevent = "auto",
                customVariables = "{}",
                custom_hide = "timed",
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
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            single = "WARLOCK",
            multi = {
                WARLOCK = true,
            },
        },
        size = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        use_spellknown = false,
        level_operator = {
            "~=",
        },
        level = {
            "120",
        },
        use_level = false,
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
