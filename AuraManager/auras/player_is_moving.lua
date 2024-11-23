
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_is_moving"] = {
    id = "Player is moving",
    uid = "WCnPFoN6N2H",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 0,
    yOffset = -12,
    width = 5,
    height = 5,
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
                debuffType = "HELPFUL",
                type = "unit",
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "target",
                names = {},
                event = "Conditions",
                subeventPrefix = "SPELL",
                use_unit = true,
                itemName = 0,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_messageType = false,
                use_spec = true,
                use_message = false,
                spellName = 5176,
                use_sourceName = false,
                instance_size = {},
                use_inverse = false,
                use_targetRequired = false,
                use_itemName = true,
                use_moveSpeed = false,
                realSpellName = "Wrath",
                use_spellName = true,
                use_ismoving = true,
                use_track = true,
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
        use_never = false,
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
