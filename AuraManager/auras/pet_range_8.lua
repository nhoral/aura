
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_range_8"] = {
    id = "Pet Range 8",
    uid = "ludhrWAbuFh",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 160,
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
                type = "unit",
                subeventSuffix = "",
                duration = "1",
                event = "Range Check",
                subeventPrefix = "DAMAGE_SHIELD",
                use_unit = true,
                spellIds = {},
                unit = "pet",
                names = {},
                debuffType = "HARMFUL",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Moonfire",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                genericShowOn = "showOnCooldown",
                use_genericShowOn = true,
                use_threatpct = false,
                threatpct_operator = {
                    ">=",
                },
                threatpct = {
                    "100",
                },
                use_threatvalue = false,
                use_alertType = true,
                range_operator = "<=",
                eventtype = "PLAYER_REGEN_ENABLED",
                use_range = true,
                itemName = 5961,
                use_count = false,
                use_delay = true,
                use_status = false,
                range = "8",
                use_itemName = true,
                use_sourceUnit = false,
                status = 3,
                use_eventtype = true,
                use_aggro = true,
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
