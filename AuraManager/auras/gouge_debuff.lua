
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["gouge_debuff"] = {
    id = "Gouge Debuff",
    uid = "Pw0Yf31hANI",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 56,
    yOffset = -4,
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
                debuffType = "HARMFUL",
                type = "aura2",
                subeventPrefix = "SPELL",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                unit = "target",
                spellIds = {},
                auranames = {
                    "Gouge",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                matchesShowOn = "showOnActive",
                ownOnly = true,
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
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        use_class = true,
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
