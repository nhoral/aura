
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["mana_50"] = {
    id = "Mana 50",
    uid = "widLeC0vzoa",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
    yOffset = -4,
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
        activeTriggerMode = -10,
        {
            trigger = {
                type = "unit",
                names = {},
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Power",
                unit = "player",
                spellIds = {},
                debuffType = "HELPFUL",
                use_showCost = false,
                powertype = 0,
                use_powertype = true,
                use_unit = true,
                use_percentpower = true,
                percentpower_operator = {
                    ">=",
                },
                percentpower = {
                    "50",
                },
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
            single = "DRUID",
            multi = {
                DRUID = true,
                ROGUE = true,
            },
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