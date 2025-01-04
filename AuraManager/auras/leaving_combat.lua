
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["leaving_combat"] = {
    id = "Leaving Combat",
    uid = "NADZUq57ZFR",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 112,
    yOffset = -4,
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
                names = {},
                use_unit = true,
                spellIds = {},
                subeventPrefix = "DAMAGE_SHIELD",
                unit = "target",
                debuffType = "HARMFUL",
                genericShowOn = "showOnCooldown",
                use_genericShowOn = true,
                itemName = 0,
                use_count = false,
                auranames = {
                    "Moonfire",
                },
                unitExists = false,
                useName = true,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                threatpct = {
                    "100",
                },
                use_sourceUnit = false,
                ownOnly = true,
                use_threatpct = false,
                threatpct_operator = {
                    ">=",
                },
                use_eventtype = true,
                use_aggro = true,
                use_status = false,
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
