
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["combat_start"] = {
    id = "Combat Start",
    uid = "VUnGeBmQhCu",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 60,
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
        activeTriggerMode = -10,
        {
            trigger = {
                type = "event",
                subeventSuffix = "",
                names = {},
                use_genericShowOn = true,
                event = "Combat Events",
                unit = "target",
                spellIds = {},
                subeventPrefix = "DAMAGE_SHIELD",
                genericShowOn = "showOnCooldown",
                debuffType = "HARMFUL",
                use_unit = true,
                itemName = 0,
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
                use_delay = false,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_DISABLED",
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
                duration = "2",
                status = 3,
                ownOnly = true,
                use_messageType = true,
                delay = 2,
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