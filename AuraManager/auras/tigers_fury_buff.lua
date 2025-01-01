
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["tigers_fury_buff"] = {
    id = "Tigers Fury Buff",
    uid = "oHay8AVkdEI",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 4,
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
                spellName = 5217,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Cooldown Progress (Spell)",
                unit = "player",
                realSpellName = "Tiger's Fury",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                use_unit = true,
                auranames = {
                    "Tiger's Fury",
                },
                unitExists = false,
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                useName = true,
                useNamePattern = false,
                useRem = false,
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
            single = "DRUID",
            multi = {
                DRUID = true,
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
