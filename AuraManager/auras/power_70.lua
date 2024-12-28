
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["power_70"] = {
    id = "Power 70",
    uid = "lB4f3j)(HaO",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 30,
    yOffset = -18,
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
                event = "Power",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                use_unit = true,
                use_showCost = false,
                powertype = 3,
                use_powertype = false,
                use_percentpower = true,
                percentpower = {
                    "70",
                },
                percentpower_operator = {
                    ">=",
                },
            },
            untrigger = {},
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
                ROGUE = true,
                WARRIOR = true,
            },
            single = "WARRIOR",
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
