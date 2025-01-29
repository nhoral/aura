
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party_1_range_35"] = {
    id = "Party 1 Range 35",
    uid = "gCHQsouemnj",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 216,
    yOffset = 88,
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
                subeventSuffix = "_CAST_START",
                event = "Range Check",
                subeventPrefix = "SPELL",
                use_unit = true,
                spellIds = {},
                unit = "party1",
                names = {},
                debuffType = "HELPFUL",
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                realSpellName = "Wrath",
                use_spellName = true,
                use_genericShowOn = true,
                use_track = true,
                spellName = 5176,
                range_operator = "<=",
                use_range = true,
                itemName = 0,
                range = "35",
                use_itemName = true,
                use_messageType = false,
                use_hand = true,
                use_message = false,
                instance_size = {},
                use_moveSpeed = false,
                use_targetRequired = false,
                use_sourceName = false,
                use_specific_unit = true,
                use_spellNames = true,
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
            multi = {},
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
