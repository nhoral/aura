
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_is_player"] = {
    id = "Target Is Player",
    uid = "kxEIofQqpz1",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 80,
    yOffset = -16,
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
                type = "unit",
                names = {},
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Unit Characteristics",
                unit = "target",
                spellIds = {},
                debuffType = "HELPFUL",
                use_unit = true,
                duration = "1",
                use_class = false,
                custom_hide = "timed",
                customVariables = "{}",
                custom_type = "stateupdate",
                unevent = "auto",
                check = "update",
                use_unitisunit = false,
                use_character = true,
                character = "player",
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
