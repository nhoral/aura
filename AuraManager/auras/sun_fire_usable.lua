
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["sun_fire_usable"] = {
    id = "Sun fire Usable",
    uid = "nlUoNJSTov9",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 104,
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
                debuffType = "HARMFUL",
                subeventSuffix = "_CAST_START",
                event = "Action Usable",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "target",
                useRem = false,
                matchesShowOn = "showOnActive",
                unitExists = false,
                useName = false,
                auranames = {
                    "",
                },
                ownOnly = true,
                use_debuffClass = false,
                spellName = 414684,
                use_genericShowOn = true,
                realSpellName = "Sunfire",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                auraspellids = {
                    "414684",
                },
                useExactSpellId = true,
                use_inverse = true,
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
