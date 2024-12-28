
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["entered_combat"] = {
    id = "Entered Combat",
    uid = "VUnGeBmQhCu",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 28,
    yOffset = -4,
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
                unit = "target",
                subeventPrefix = "DAMAGE_SHIELD",
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Combat Events",
                debuffType = "HARMFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Moonfire",
                },
                useName = true,
                useRem = false,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                itemName = 0,
                use_count = false,
                use_itemName = true,
                duration = "2",
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_DISABLED",
                use_sourceUnit = false,
                threatpct = {
                    "100",
                },
                use_status = false,
                threatpct_operator = {
                    ">=",
                },
                use_threatpct = false,
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
        spec = {
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
