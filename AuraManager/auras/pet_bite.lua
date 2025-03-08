
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_bite"] = {
    id = "Pet Bite",
    uid = "TOfCRVOn7IM",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -576,
    yOffset = -315,
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
                type = "spell",
                subeventSuffix = "",
                debuffType = "HARMFUL",
                ownOnly = true,
                event = "Action Usable",
                names = {},
                unitExists = false,
                unit = "target",
                spellIds = {},
                subeventPrefix = "DAMAGE_SHIELD",
                auranames = {
                    "Moonfire",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_genericShowOn = true,
                realSpellName = "Bite",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 17255,
                duration = "1",
                use_unit = true,
                itemName = 7285,
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
                eventtype = "PLAYER_REGEN_ENABLED",
                use_delay = true,
                use_threatpct = false,
                use_eventtype = true,
                use_aggro = true,
                use_status = false,
                status = 3,
                use_messageType = true,
                use_itemBonusId = true,
                use_itemSlot = false,
                itemBonusId = "15310",
                use_itemTypeName = false,
                use_equipped = true,
                use_itemSetId = true,
                itemTypeName = {},
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
