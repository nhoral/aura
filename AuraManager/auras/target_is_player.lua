
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_is_player"] = {
    id = "Target Is Player",
    uid = "kxEIofQqpz1",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
    yOffset = 64,
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
                type = "unit",
                subeventSuffix = "_CAST_START",
                event = "Unit Characteristics",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "target",
                debuffType = "HELPFUL",
                duration = "1",
                custom_hide = "timed",
                custom_type = "stateupdate",
                unevent = "auto",
                check = "update",
                use_unit = true,
                customVariables = "{}",
                use_unitisunit = false,
                use_character = true,
                use_class = false,
                character = "player",
                unitisunit = "player",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
        talent = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        level_operator = {
            "~=",
        },
        use_level = false,
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
