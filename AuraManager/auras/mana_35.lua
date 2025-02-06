
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["mana_35"] = {
    id = "Mana 35",
    uid = "7VTbtU6nju4",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 160,
    yOffset = 88,
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
        activeTriggerMode = -10,
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                event = "Power",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                use_unit = true,
                powertype = 0,
                use_powertype = true,
                use_percentpower = false,
                use_showCost = false,
                use_power = true,
                percentpower = {
                    "10",
                },
                percentpower_operator = {
                    ">=",
                },
                power = {
                    "35",
                },
                power_operator = {
                    ">=",
                },
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
                ROGUE = true,
                DRUID = true,
            },
            single = "DRUID",
        },
        spec = {
            multi = {},
        },
        talent = {
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
