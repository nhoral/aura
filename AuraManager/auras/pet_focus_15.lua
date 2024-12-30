
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_focus_15"] = {
    id = "Pet Focus 15",
    uid = "ZNaOOKldViz",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 20,
    yOffset = -12,
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
                debuffType = "HARMFUL",
                subeventSuffix = "",
                event = "Power",
                use_percentpower = true,
                names = {},
                spellIds = {},
                use_unit = true,
                subeventPrefix = "DAMAGE_SHIELD",
                unit = "pet",
                percentpower = {
                    "15",
                },
                percentpower_operator = {
                    ">=",
                },
                useRem = false,
                matchesShowOn = "showOnActive",
                unitExists = false,
                useName = true,
                auranames = {
                    "Moonfire",
                },
                ownOnly = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                itemName = 15018,
                use_count = false,
                use_itemName = true,
                duration = "1",
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                use_sourceUnit = false,
                threatpct = {
                    "100",
                },
                use_aggro = true,
                use_eventtype = true,
                status = 3,
                use_threatpct = false,
                threatpct_operator = {
                    ">=",
                },
                use_status = false,
                use_messageType = true,
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
        talent = {
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
