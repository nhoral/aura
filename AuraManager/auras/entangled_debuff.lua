
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["entangled_debuff"] = {
    id = "Entangled Debuff",
    uid = "z(cR3tB8VNj",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -640,
    yOffset = -303,
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
                debuffType = "HARMFUL",
                ownOnly = true,
                event = "Health",
                names = {},
                unitExists = false,
                unit = "target",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Entangling Roots",
                },
                useName = true,
                matchesShowOn = "showOnActive",
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
        class = {
            multi = {
                DRUID = true,
            },
            single = "DRUID",
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
