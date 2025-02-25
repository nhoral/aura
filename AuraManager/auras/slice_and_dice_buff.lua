
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["slice_and_dice_buff"] = {
    id = "Slice and Dice Buff",
    uid = "IF6YvezXSjM",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 152,
    yOffset = 68,
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
                    "Slice and Dice",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
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
