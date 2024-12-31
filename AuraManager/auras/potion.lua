
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["potion"] = {
    id = "Potion",
    uid = "B1REXj79mTh",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 24,
    yOffset = -12,
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
        disjunctive = "any",
        activeTriggerMode = -10,
        {
            trigger = {
                type = "item",
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                unit = "player",
                use_genericShowOn = true,
                event = "Cooldown Progress (Item)",
                names = {},
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                genericShowOn = "showOnReady",
                subeventPrefix = "SPELL",
                use_track = true,
                spellName = 355,
                itemName = 858,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                use_debuffClass = false,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                unit = "player",
                use_genericShowOn = true,
                event = "Cooldown Progress (Item)",
                names = {},
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                genericShowOn = "showOnReady",
                subeventPrefix = "SPELL",
                use_track = true,
                spellName = 355,
                itemName = 929,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                use_debuffClass = false,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                useNamePattern = false,
                count_operator = ">=",
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
            single = "WARRIOR",
            multi = {
                DRUID = true,
                WARRIOR = true,
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
