
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_moving"] = {
    id = "Player Moving",
    uid = "WCnPFoN6N2H",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 216,
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
                subeventSuffix = "_CAST_START",
                event = "Conditions",
                subeventPrefix = "SPELL",
                use_unit = true,
                spellIds = {},
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                realSpellName = "Wrath",
                use_spellName = true,
                use_genericShowOn = true,
                use_track = true,
                spellName = 5176,
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_message = false,
                instance_size = {},
                use_moveSpeed = false,
                use_targetRequired = false,
                use_ismoving = true,
                use_sourceName = false,
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
