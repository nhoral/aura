
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["health_below_75"] = {
    id = "Health Below 75",
    uid = "fqgz)L9Ic8o",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 30,
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
                event = "Health",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                use_unit = true,
                use_power = false,
                use_showCost = true,
                powertype = 3,
                use_powertype = true,
                percenthealth = {
                    "75",
                },
                use_percentpower = false,
                use_percenthealth = true,
                percenthealth_operator = {
                    "<",
                },
                use_health = false,
                use_maxhealth = false,
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
            },
            single = "ROGUE",
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
