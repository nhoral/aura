
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["health_below_50"] = {
    id = "Health Below 50",
    uid = "8gq)711zPo6",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 6,
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
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                names = {},
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                use_power = false,
                use_showCost = true,
                powertype = 3,
                use_percentpower = false,
                use_powertype = true,
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "percenthealth",
                value = "50",
                op = ">",
            },
            changes = {
                {
                    value = {
                        1,
                        1,
                        1,
                        0,
                    },
                    property = "color",
                },
            },
        },
    },
    load = {
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
