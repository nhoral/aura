
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["sun_fire_usable"] = {
    id = "Sun fire Usable",
    uid = "nlUoNJSTov9",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 96,
    yOffset = -16,
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
                type = "spell",
                subeventSuffix = "_CAST_START",
                unit = "target",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Action Usable",
                debuffType = "HARMFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "",
                },
                useName = false,
                useRem = false,
                use_debuffClass = false,
                use_genericShowOn = true,
                realSpellName = "Sunfire",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 414684,
                use_track = true,
                useExactSpellId = true,
                auraspellids = {
                    "414684",
                },
                use_inverse = true,
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
                DRUID = true,
            },
            single = "DRUID",
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
