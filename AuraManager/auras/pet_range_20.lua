
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_range_20"] = {
    id = "Pet Range 20",
    uid = "i5pfYnYQ8P(",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 132,
    yOffset = 84,
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
                debuffType = "HARMFUL",
                type = "unit",
                names = {},
                subeventSuffix = "",
                unit = "pet",
                duration = "1",
                event = "Range Check",
                subeventPrefix = "DAMAGE_SHIELD",
                use_unit = true,
                spellIds = {},
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Moonfire",
                },
                matchesShowOn = "showOnActive",
                useName = true,
                useRem = false,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                range = "20",
                use_range = true,
                range_operator = "<=",
                itemName = 10410,
                use_count = false,
                use_itemName = true,
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                threatpct = {
                    "100",
                },
                threatpct_operator = {
                    ">=",
                },
                use_eventtype = true,
                use_status = false,
                use_sourceUnit = false,
                status = 3,
                use_aggro = true,
                use_threatpct = false,
                use_messageType = true,
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
            },
            single = "DRUID",
        },
        size = {
            multi = {},
        },
        spec = {
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
