
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["leaving_combat"] = {
    id = "Leaving Combat",
    uid = "NADZUq57ZFR",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 116,
    yOffset = 88,
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
                type = "event",
                subeventSuffix = "",
                duration = "1",
                event = "Combat Events",
                subeventPrefix = "DAMAGE_SHIELD",
                use_unit = true,
                spellIds = {},
                unit = "target",
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
                eventtype = "PLAYER_REGEN_ENABLED",
                itemName = 0,
                use_count = false,
                use_delay = true,
                use_status = false,
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
