
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_range_8"] = {
    id = "Pet Range 8",
    uid = "ludhrWAbuFh",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 4,
    yOffset = -12,
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
                subeventPrefix = "DAMAGE_SHIELD",
                subeventSuffix = "",
                names = {},
                duration = "1",
                event = "Range Check",
                unit = "pet",
                use_unit = true,
                spellIds = {},
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                range_operator = "<=",
                use_range = true,
                range = "8",
                itemName = 5961,
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
                use_aggro = true,
                use_eventtype = true,
                threatpct_operator = {
                    ">=",
                },
                use_status = false,
                use_threatpct = false,
                ownOnly = true,
                use_sourceUnit = false,
                status = 3,
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
