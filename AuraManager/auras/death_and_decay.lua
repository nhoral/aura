
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["death_and_decay"] = {
    id = "Death and Decay",
    uid = "laUC9rTuOm)",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 96,
    yOffset = 0,
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
                type = "spell",
                spellName = 43265,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Action Usable",
                unit = "player",
                realSpellName = "Arcane Blast",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_inverse = false,
                use_track = true,
                debuffType = "HELPFUL",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        race = {
            single = "Scourge",
            multi = {
                Scourge = true,
            },
        },
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            single = "MAGE",
            multi = {
                ROGUE = true,
                MAGE = true,
            },
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
