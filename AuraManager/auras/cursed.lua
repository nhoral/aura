
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["cursed"] = {
    id = "Cursed",
    uid = "yFzrQL0KwRm",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 140,
    yOffset = 96,
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
                type = "aura2",
                subeventSuffix = "_CAST_START",
                useRem = false,
                event = "Health",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = false,
                auranames = {
                    "Curse of Agony",
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
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HARMFUL",
                use_debuffClass = true,
                debuffClass = {
                    curse = true,
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
            },
            single = "ROGUE",
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
