
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_growl"] = {
    id = "Pet Growl",
    uid = "u2bFu)fkIQ8",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 184,
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
                type = "spell",
                subeventSuffix = "",
                useRem = false,
                ownOnly = true,
                event = "Action Usable",
                names = {},
                unitExists = false,
                matchesShowOn = "showOnActive",
                spellIds = {},
                useName = true,
                auranames = {
                    "Moonfire",
                },
                subeventPrefix = "DAMAGE_SHIELD",
                unit = "target",
                debuffType = "HARMFUL",
                use_genericShowOn = true,
                realSpellName = "Growl",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 14916,
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
                use_delay = true,
                use_threatpct = false,
                use_aggro = true,
                status = 3,
                eventtype = "PLAYER_REGEN_ENABLED",
                use_status = false,
                use_eventtype = true,
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
