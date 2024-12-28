
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["enemy_range_20"] = {
    id = "Enemy Range 20",
    uid = "y9SKOBfsVYr",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 12,
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
        activeTriggerMode = -10,
        {
            trigger = {
                debuffType = "HELPFUL",
                type = "unit",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Range Check",
                subeventPrefix = "SPELL",
                unit = "target",
                spellIds = {},
                use_unit = true,
                range = "20",
                use_range = true,
                range_operator = "<=",
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 0,
            },
            changes = {
                {
                    property = "alpha",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 1,
            },
            changes = {
                {
                    value = 1,
                    property = "alpha",
                },
            },
        },
    },
    load = {
        use_never = false,
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
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
