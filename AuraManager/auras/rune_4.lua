
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["rune_4"] = {
    id = "Rune 4",
    uid = "HnKJbRZR5Cm",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 0,
    yOffset = -20,
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
                event = "Death Knight Rune",
                names = {},
                use_unit = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                use_power = true,
                use_showCost = false,
                powertype = 6,
                use_powertype = true,
                use_percentpower = false,
                percentpower_operator = {
                    ">=",
                },
                percentpower = {
                    "10",
                },
                use_runesCount = true,
                runesCount = "4",
                power_operator = {
                    ">=",
                },
                runesCount_operator = ">=",
                power = {
                    "4",
                },
                rune = 0,
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        talent = {
            multi = {},
        },
        class = {
            multi = {
                ROGUE = true,
            },
            single = "ROGUE",
        },
        spec = {
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
