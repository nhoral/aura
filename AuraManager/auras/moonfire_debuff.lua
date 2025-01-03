
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["moonfire_debuff"] = {
    id = "Moonfire Debuff",
    uid = "mthbtrvywzU",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 44,
    yOffset = -8,
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
                    "Moonfire",
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
                DRUID = true,
            },
            single = "DRUID",
        },
        size = {
            multi = {},
        },
        spec = {
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
