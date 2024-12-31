
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party_1_range_35"] = {
    id = "Party 1 Range 35",
    uid = "gCHQsouemnj",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 32,
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
                type = "unit",
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                unit = "party1",
                use_genericShowOn = true,
                event = "Range Check",
                names = {},
                realSpellName = "Wrath",
                use_spellName = true,
                spellIds = {},
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                subeventPrefix = "SPELL",
                use_track = true,
                spellName = 5176,
                use_unit = true,
                range = "35",
                range_operator = "<=",
                use_range = true,
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_hand = true,
                instance_size = {},
                use_sourceName = false,
                use_targetRequired = false,
                use_moveSpeed = false,
                use_message = false,
                use_spellNames = true,
                use_specific_unit = true,
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
