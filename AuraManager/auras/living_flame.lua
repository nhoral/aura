
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["living_flame"] = {
    id = "Living Flame",
    uid = "pJGaYmUIzxa",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 28,
    yOffset = -8,
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
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Cooldown Progress (Spell)",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                realSpellName = "Living Flame",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 401556,
                use_track = true,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "spell",
                subeventSuffix = "_CAST_START",
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Action Usable",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                realSpellName = "Living Flame",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 401556,
                use_track = true,
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
                ROGUE = true,
                MAGE = true,
            },
            single = "MAGE",
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
