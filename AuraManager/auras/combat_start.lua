
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
                useName = true,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_threatvalue = false,
                use_delay = false,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_DISABLED",
                threatpct = {
                    "100",
                },
                duration = "2",
                use_eventtype = true,
                status = 3,
                use_threatpct = false,
                ownOnly = true,
                use_status = false,
                threatpct_operator = {
                    ">=",
                },
                use_aggro = true,
                use_sourceUnit = false,
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
