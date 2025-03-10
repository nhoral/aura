
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["potion"] = {
    id = "Potion",
    uid = "B1REXj79mTh",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -636,
    yOffset = -323,
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
        disjunctive = "any",
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Cooldown Progress (Item)",
                names = {},
                unitExists = false,
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Enrage",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_genericShowOn = true,
                realSpellName = "Taunt",
                use_spellName = true,
                genericShowOn = "showOnReady",
                use_track = true,
                spellName = 355,
                itemName = 858,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Cooldown Progress (Item)",
                names = {},
                unitExists = false,
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Enrage",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_genericShowOn = true,
                realSpellName = "Taunt",
                use_spellName = true,
                genericShowOn = "showOnReady",
                use_track = true,
                spellName = 355,
                itemName = 929,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                debuffType = "HELPFUL",
                event = "Cooldown Progress (Item)",
                unit = "player",
                use_genericShowOn = true,
                genericShowOn = "showOnReady",
                itemName = 118,
                use_itemName = true,
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
                WARRIOR = true,
                DRUID = true,
            },
            single = "WARRIOR",
        },
        spec = {
            multi = {},
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
