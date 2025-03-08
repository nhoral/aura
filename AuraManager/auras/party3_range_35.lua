
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party3_range_35"] = {
    id = "Party3 Range 35",
    uid = "5GZ(fz3HYzR",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -640,
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
                type = "unit",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Range Check",
                names = {},
                unit = "party3",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                realSpellName = "Wrath",
                use_spellName = true,
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 5176,
                use_unit = true,
                range = "35",
                use_range = true,
                range_operator = "<=",
                itemName = 0,
                use_itemName = true,
                use_specific_unit = true,
                use_hand = true,
                use_messageType = false,
                use_moveSpeed = false,
                instance_size = {},
                use_sourceName = false,
                use_targetRequired = false,
                use_spellNames = true,
                use_message = false,
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
