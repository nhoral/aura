
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["frost_nova"] = {
    id = "Frost Nova",
    uid = "x6limp3SePj",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 24,
    yOffset = -4,
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
                spellName = 122,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Cooldown Progress (Spell)",
                unit = "player",
                realSpellName = "Frost Nova",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
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
