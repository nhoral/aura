
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["enemy_in_melee_range"] = {
    id = "Enemy In Melee Range",
    uid = "ZS(VGt32dqK",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 36,
    yOffset = 0,
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
                subeventPrefix = "SPELL",
                type = "unit",
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "target",
                names = {},
                event = "Range Check",
                debuffType = "HELPFUL",
                use_unit = true,
                range = "5",
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
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {},
        },
        talent = {
            multi = {},
        },
        use_never = false,
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
