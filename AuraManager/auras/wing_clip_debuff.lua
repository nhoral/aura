
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["wing_clip_debuff"] = {
    id = "Wing Clip Debuff",
    uid = "5tQdLTY0BGu",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 148,
    yOffset = 64,
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
                ownOnly = true,
                event = "Health",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Wing Clip",
                },
                subeventPrefix = "SPELL",
                unit = "target",
                debuffType = "HARMFUL",
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
                HUNTER = true,
            },
            single = "HUNTER",
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
