
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_combat"] = {
    id = "Pet Combat",
    uid = "H5yuWk(O57I",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 180,
    yOffset = 84,
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
                useRem = false,
                ownOnly = true,
                event = "Unit Characteristics",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Moonfire",
                },
                subeventPrefix = "DAMAGE_SHIELD",
                unit = "pet",
                debuffType = "HARMFUL",
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                duration = "1",
                use_unit = true,
                itemName = 5317,
                use_count = false,
                use_itemName = true,
                use_threatvalue = false,
                threatpct_operator = {
                    ">=",
                },
                use_alertType = true,
                use_sourceUnit = false,
                threatpct = {
                    "100",
                },
                use_messageType = true,
                status = 3,
                use_status = false,
                use_aggro = true,
                use_delay = true,
                use_eventtype = true,
                use_threatpct = false,
                eventtype = "PLAYER_REGEN_ENABLED",
                use_behavior = false,
                use_inCombat = true,
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
