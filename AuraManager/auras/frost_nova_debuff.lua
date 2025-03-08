
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["frost_nova_debuff"] = {
    id = "Frost Nova Debuff",
    uid = "Dfm7Xc4DMod",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -580,
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
                event = "Health",
                names = {},
                unitExists = false,
                unit = "target",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "122",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                auraspellids = {
                    "116",
                },
                useExactSpellId = false,
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
                MAGE = true,
            },
            single = "MAGE",
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
