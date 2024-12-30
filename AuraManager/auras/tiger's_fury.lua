
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["tiger's_fury"] = {
    id = "Tiger's Fury",
    uid = "oHay8AVkdEI",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 44,
    yOffset = -20,
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
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                event = "Cooldown Progress (Spell)",
                names = {},
                spellIds = {},
                use_unit = true,
                subeventPrefix = "SPELL",
                unit = "player",
                useRem = false,
                matchesShowOn = "showOnActive",
                unitExists = false,
                useName = true,
                auranames = {
                    "Tiger's Fury",
                },
                use_debuffClass = false,
                useNamePattern = false,
                spellName = 5217,
                use_genericShowOn = true,
                realSpellName = "Tiger's Fury",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
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
