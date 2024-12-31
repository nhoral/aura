
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_bite"] = {
    id = "Pet Bite",
    uid = "TOfCRVOn7IM",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 52,
    yOffset = -8,
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
                type = "spell",
                debuffType = "HARMFUL",
                subeventSuffix = "",
                unit = "target",
                use_genericShowOn = true,
                event = "Action Usable",
                names = {},
                realSpellName = "Bite",
                use_spellName = true,
                spellIds = {},
                genericShowOn = "showOnCooldown",
                subeventPrefix = "DAMAGE_SHIELD",
                use_track = true,
                spellName = 17255,
                use_unit = true,
                itemName = 7285,
                use_count = false,
                auranames = {
                    "Moonfire",
                },
                unitExists = false,
                useRem = false,
                matchesShowOn = "showOnActive",
                use_itemName = true,
                useName = true,
                use_threatvalue = false,
                use_delay = true,
                use_alertType = true,
                eventtype = "PLAYER_REGEN_ENABLED",
                threatpct = {
                    "100",
                },
                use_eventtype = true,
                use_status = false,
                ownOnly = true,
                status = 3,
                duration = "1",
                use_sourceUnit = false,
                use_aggro = true,
                use_threatpct = false,
                threatpct_operator = {
                    ">=",
                },
                use_messageType = true,
                use_itemBonusId = true,
                use_itemSlot = false,
                itemTypeName = {},
                itemBonusId = "15310",
                use_itemTypeName = false,
                use_equipped = true,
                use_itemSetId = true,
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
