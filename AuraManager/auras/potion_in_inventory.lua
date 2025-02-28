
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["potion_in_inventory"] = {
    id = "Potion in Inventory",
    uid = "hPxWoC)vtyf",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -576,
    yOffset = -319,
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
                useRem = false,
                event = "Item Count",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Enrage",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 355,
                itemName = 118,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                count = "1",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                useRem = false,
                event = "Item Count",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Enrage",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 355,
                itemName = 858,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                count = "1",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                useRem = false,
                event = "Item Count",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Enrage",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 355,
                itemName = 929,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                count = "1",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                useRem = false,
                event = "Item Count",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Enrage",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 355,
                itemName = 3928,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                count = "1",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                useRem = false,
                event = "Item Count",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Enrage",
                },
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 355,
                itemName = 1710,
                use_count = true,
                use_debuffClass = false,
                use_itemName = true,
                count = "1",
                useNamePattern = false,
                count_operator = ">=",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
