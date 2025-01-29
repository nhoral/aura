
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_cross"] = {
    id = "Target Cross",
    uid = "vfpOnpj2STL",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 180,
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
                event = "Unit Characteristics",
                subeventPrefix = "SPELL",
                use_unit = true,
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
                raidMarkIndex = 7,
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
