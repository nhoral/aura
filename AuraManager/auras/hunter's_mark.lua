
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["hunter's_mark"] = {
    id = "Hunter's Mark",
    uid = "oULPwe55eWw",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 108,
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
                type = "aura2",
                subeventSuffix = "_CAST_START",
                unit = "target",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Health",
                debuffType = "HARMFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Hunter's Mark",
                },
                useName = true,
                useRem = false,
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
            multi = {
                HUNTER = true,
            },
            single = "HUNTER",
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
