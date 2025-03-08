
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["grounding_totem_dropped"] = {
    id = "Grounding Totem Dropped",
    uid = "pQyVqxq9ulx",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -540,
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
                type = "spell",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Totem",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                realSpellName = "Arcane Blast",
                use_spellName = true,
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 5730,
                totemName = "Grounding Totem",
                use_totemName = true,
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
