
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["power_15"] = {
    id = "Power 15",
    uid = "Ekw)GUIZURB",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 18,
    yOffset = -12,
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
                unit = "player",
                names = {},
                event = "Power",
                debuffType = "HELPFUL",
                use_unit = true,
                use_power = false,
                use_showCost = false,
                powertype = 3,
                use_percentpower = false,
                use_powertype = false,
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "15",
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
        size = {
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
