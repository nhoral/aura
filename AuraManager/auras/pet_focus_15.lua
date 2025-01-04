
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_focus_15"] = {
    id = "Pet Focus 15",
    uid = "ZNaOOKldViz",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 104,
    yOffset = -8,
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
                event = "Power",
                names = {},
                use_unit = true,
                spellIds = {},
                subeventPrefix = "DAMAGE_SHIELD",
                unit = "pet",
                debuffType = "HARMFUL",
                genericShowOn = "showOnCooldown",
                use_genericShowOn = true,
                use_percentpower = true,
                itemName = 15018,
                use_count = false,
                auranames = {
                    "Moonfire",
                },
                unitExists = false,
                useName = true,
                use_itemName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                percentpower_operator = {
                    ">=",
                },
                percentpower = {
                    "15",
                },
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
