
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["poisoned"] = {
    id = "Poisoned",
    uid = "wpb8h0XlSGD",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 28,
    yOffset = -12,
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
                type = "aura2",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                debuffType = "HARMFUL",
                auranames = {
                    "17183",
                    "17292",
                    "24097",
                    "18208",
                    "17511",
                    "11918",
                    "744",
                    "25605",
                    "18197",
                    "17330",
                    "16401",
                    "13518",
                    "18077",
                    "28241",
                    "28158",
                    "18203",
                    "13298",
                    "21952",
                    "19448",
                    "25645",
                    "16400",
                    "8313",
                },
                unitExists = false,
                matchesShowOn = "showOnActive",
                use_debuffClass = true,
                useName = false,
                useRem = false,
                debuffClass = {
                    poison = true,
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
