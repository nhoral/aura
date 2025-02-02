
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_triangle"] = {
    id = "Target Triangle",
    uid = "txiqjd5qtuS",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 196,
    yOffset = 68,
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
        activeTriggerMode = 1,
        disjunctive = "all",
        {
            trigger = {
                type = "custom",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Unit Characteristics",
                names = {},
                unit = "target",
                spellIds = {},
                subeventPrefix = "SPELL",
                duration = "1",
                use_unit = true,
                custom_type = "stateupdate",
                unevent = "auto",
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.05 then
        aura_env.last = GetTime()
        
        local isSkull = GetRaidTargetIndex("target") == 4
        
        if (isSkull) then
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
                check = "update",
                custom_hide = "timed",
                customVariables = "{}",
                use_unitisunit = false,
                use_character = false,
                use_class = false,
                character = "player",
                use_raidMarkIndex = true,
                raidMarkIndex = 8,
                unitisunit = "player",
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
                WARLOCK = true,
            },
            single = "WARLOCK",
        },
        spec = {
            multi = {},
        },
        size = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        use_level = false,
        level_operator = {
            "~=",
        },
        level = {
            "120",
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
