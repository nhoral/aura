
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["bandage_in_inventory"] = {
    id = "Bandage In Inventory",
    uid = "xz)l7deWE6P",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 132,
    yOffset = 100,
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
        disjunctive = "any",
        activeTriggerMode = -10,
        {
            trigger = {
                type = "item",
                subeventSuffix = "_CAST_START",
                event = "Item Count",
                subeventPrefix = "SPELL",
                spellIds = {},
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                unitExists = false,
                auranames = {
                    "Enrage",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                genericShowOn = "showOnCooldown",
                realSpellName = "Taunt",
                use_spellName = true,
                use_genericShowOn = true,
                use_track = true,
                spellName = 355,
                use_debuffClass = false,
                useNamePattern = false,
                itemName = 1251,
                use_count = true,
                use_itemName = true,
                count = "1",
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
        class = {
            multi = {
                DRUID = true,
                WARRIOR = true,
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
