
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_range_20"] = {
    id = "Pet Range 20",
    uid = "i5pfYnYQ8P(",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 84,
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
                type = "unit",
                debuffType = "HARMFUL",
                subeventSuffix = "",
                unit = "pet",
                use_genericShowOn = true,
                event = "Range Check",
                names = {},
                spellIds = {},
                genericShowOn = "showOnCooldown",
                subeventPrefix = "DAMAGE_SHIELD",
                use_unit = true,
                range = "20",
                range_operator = "<=",
                use_range = true,
                itemName = 10410,
                use_count = false,
                auranames = {
                    "Moonfire",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                threatpct = {
                    "100",
                },
                ownOnly = true,
                status = 3,
                duration = "1",
                use_sourceUnit = false,
                use_status = false,
                use_aggro = true,
                use_threatpct = false,
                threatpct_operator = {
                    ">=",
                },
                use_eventtype = true,
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
