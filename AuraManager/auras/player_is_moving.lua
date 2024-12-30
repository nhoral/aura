
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_is_moving"] = {
    id = "Player is moving",
    uid = "WCnPFoN6N2H",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 72,
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
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                event = "Conditions",
                names = {},
                spellIds = {},
                use_unit = true,
                subeventPrefix = "SPELL",
                unit = "player",
                spellName = 5176,
                use_genericShowOn = true,
                realSpellName = "Wrath",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                itemName = 0,
                use_itemName = true,
                use_inverse = false,
                use_messageType = false,
                use_message = false,
                use_ismoving = true,
                use_sourceName = false,
                instance_size = {},
                use_targetRequired = false,
                use_moveSpeed = false,
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
