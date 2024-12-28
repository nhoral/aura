
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_is_moving"] = {
    id = "Player is moving",
    uid = "WCnPFoN6N2H",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 18,
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
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Conditions",
                names = {},
                unit = "target",
                spellIds = {},
                use_unit = true,
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                realSpellName = "Wrath",
                use_spellName = true,
                use_track = true,
                spellName = 5176,
                itemName = 0,
                use_itemName = true,
                use_spec = true,
                use_ismoving = true,
                instance_size = {},
                use_sourceName = false,
                use_moveSpeed = false,
                use_targetRequired = false,
                use_message = false,
                use_messageType = false,
                use_inverse = false,
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        use_never = false,
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
