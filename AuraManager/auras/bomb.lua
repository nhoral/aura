
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["bomb"] = {
    id = "Bomb",
    uid = "UcUpvXGoicg",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 48,
    yOffset = 0,
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
                type = "item",
                subeventSuffix = "_CAST_START",
                event = "Cooldown Progress (Item)",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                spellName = 355,
                realSpellName = "Taunt",
                use_spellName = true,
                genericShowOn = "showOnReady",
                use_genericShowOn = true,
                use_track = true,
                itemName = 4360,
                auranames = {
                    "Enrage",
                },
                unitExists = false,
                useName = true,
                use_debuffClass = false,
                use_itemName = true,
                matchesShowOn = "showOnActive",
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
