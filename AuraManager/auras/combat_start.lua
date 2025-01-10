
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["combat_start"] = {
    id = "Combat Start",
    uid = "VUnGeBmQhCu",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 176,
    yOffset = 100,
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
                type = "event",
                unit = "target",
                subeventSuffix = "",
                subeventPrefix = "DAMAGE_SHIELD",
                duration = "2",
                event = "Combat Events",
                names = {},
                use_unit = true,
                spellIds = {},
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Moonfire",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                itemName = 0,
                use_count = false,
                use_itemName = true,
                use_threatvalue = false,
                use_delay = false,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_DISABLED",
                threatpct = {
                    "100",
                },
                threatpct_operator = {
                    ">=",
                },
                use_status = false,
                status = 3,
                use_eventtype = true,
                use_aggro = true,
                use_threatpct = false,
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
