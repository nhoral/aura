
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["power_word_fortitude"] = {
    id = "Power Word Fortitude",
    uid = "O1jS7qnqSyZ",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 32,
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
                type = "aura2",
                subeventSuffix = "_CAST_START",
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Health",
                debuffType = "HELPFUL",
                ownOnly = true,
                auranames = {
                    "Power Word: Fortitude",
                },
                useName = true,
                use_genericShowOn = true,
                realSpellName = "Power Word: Fortitude",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 1243,
                use_track = true,
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
                ROGUE = true,
                PRIEST = true,
            },
            single = "PRIEST",
        },
        size = {
            multi = {},
        },
        race = {
            multi = {
                Scourge = true,
            },
            single = "Scourge",
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
