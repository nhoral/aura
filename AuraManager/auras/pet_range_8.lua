
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_range_8"] = {
    id = "Pet Range 8",
    uid = "ludhrWAbuFh",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 96,
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
                subeventSuffix = "",
                names = {},
                use_genericShowOn = true,
                event = "Range Check",
                unit = "pet",
                spellIds = {},
                subeventPrefix = "DAMAGE_SHIELD",
                genericShowOn = "showOnCooldown",
                debuffType = "HARMFUL",
                use_unit = true,
                range_operator = "<=",
                use_range = true,
                range = "8",
                itemName = 5961,
                use_count = false,
                auranames = {
                    "Moonfire",
                },
                unitExists = false,
                matchesShowOn = "showOnActive",
                useName = true,
                use_itemName = true,
                useRem = false,
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                threatpct = {
                    "100",
                },
                use_eventtype = true,
                threatpct_operator = {
                    ">=",
                },
                use_threatpct = false,
                use_aggro = true,
                use_status = false,
                use_sourceUnit = false,
                duration = "1",
                status = 3,
                ownOnly = true,
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
