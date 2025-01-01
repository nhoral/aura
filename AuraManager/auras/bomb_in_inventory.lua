
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["bomb_in_inventory"] = {
    id = "Bomb in Inventory",
    uid = "No7qKs3GBoJ",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 44,
    yOffset = 0,
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
                spellName = 355,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Item Count",
                unit = "player",
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                itemName = 4360,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                count_operator = ">=",
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                count = "1",
                use_itemName = true,
                useName = true,
                useNamePattern = false,
                useRem = false,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                spellName = 355,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Item Count",
                unit = "player",
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                itemName = 4358,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                count_operator = ">=",
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                count = "1",
                use_itemName = true,
                useName = true,
                useNamePattern = false,
                useRem = false,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                spellName = 355,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Item Count",
                unit = "player",
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                itemName = 4365,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                count_operator = ">=",
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                count = "1",
                use_itemName = true,
                useName = true,
                useNamePattern = false,
                useRem = false,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "item",
                spellName = 355,
                subeventSuffix = "_CAST_START",
                names = {},
                use_genericShowOn = true,
                event = "Item Count",
                unit = "player",
                realSpellName = "Taunt",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SPELL",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                itemName = 4378,
                use_count = true,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                count_operator = ">=",
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                count = "1",
                use_itemName = true,
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
