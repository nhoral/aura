
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_moving"] = {
    id = "Player Moving",
    uid = "WCnPFoN6N2H",
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
                names = {},
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                event = "Conditions",
                unit = "player",
                realSpellName = "Wrath",
                use_spellName = true,
                spellIds = {},
                spellName = 5176,
                genericShowOn = "showOnCooldown",
                use_inverse = false,
                use_track = true,
                debuffType = "HELPFUL",
                use_unit = true,
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_message = false,
                instance_size = {},
                use_sourceName = false,
                use_targetRequired = false,
                use_moveSpeed = false,
                use_ismoving = true,
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