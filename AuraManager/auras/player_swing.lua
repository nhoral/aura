
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_swing"] = {
    id = "Player Swing",
    uid = "uEjV))XNhuK",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -652,
    yOffset = -323,
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
                event = "Swing Timer",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                realSpellName = 0,
                use_spellName = true,
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 0,
                use_unit = true,
                use_hand = true,
                hand = "ranged",
                remaining_operator = "<",
                remaining = "0.2",
                use_remaining = false,
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
