
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["rune_3"] = {
    id = "Rune 3",
    uid = "cECJ6TMBAbU",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 68,
    yOffset = -16,
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
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Death Knight Rune",
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                debuffType = "HELPFUL",
                use_power = true,
                use_showCost = false,
                powertype = 6,
                use_powertype = true,
                use_unit = true,
                use_percentpower = false,
                percentpower = {
                    "10",
                },
                percentpower_operator = {
                    ">=",
                },
                use_runesCount = true,
                power = {
                    "3",
                },
                power_operator = {
                    ">=",
                },
                runesCount_operator = ">=",
                runesCount = "3",
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
        spec = {
            multi = {},
        },
        class = {
            single = "ROGUE",
            multi = {
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
