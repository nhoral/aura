
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["lichborne_buff"] = {
    id = "Lichborne Buff",
    uid = "WW2vkj)WW(b",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
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
                debuffType = "BOTH",
                type = "aura2",
                names = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                event = "Health",
                subeventPrefix = "SPELL",
                spellIds = {},
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Lichborne",
                },
                matchesShowOn = "showOnActive",
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
        class = {
            multi = {
                MAGE = true,
                DRUID = true,
            },
            single = "MAGE",
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
