
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_skull"] = {
    id = "Target Skull",
    uid = "HCCC8tDvWT3",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
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
                event = "Unit Characteristics",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.05 then
        aura_env.last = GetTime()
        
        local isSkull = GetRaidTargetIndex("target") == 8
        
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
                spellIds = {},
                custom_type = "stateupdate",
                check = "update",
                unit = "target",
                names = {},
                debuffType = "HELPFUL",
                use_unitisunit = false,
                use_character = false,
                use_class = false,
                character = "player",
                unitisunit = "player",
                use_raidMarkIndex = true,
                raidMarkIndex = 8,
            },
            untrigger = {},
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
