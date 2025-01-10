
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["swing_timer_at_max"] = {
    id = "Swing Timer at Max",
    uid = "gpO80VTBfU0",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 196,
    yOffset = 80,
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
                debuffType = "BOTH",
                type = "unit",
                unit = "player",
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Swing Timer",
                names = {},
                use_unit = true,
                spellIds = {},
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Demon Skin",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_inverse = false,
                use_hand = true,
                hand = "ranged",
                use_incombat = true,
                remaining_operator = "<",
                use_remaining = true,
                remaining = "1",
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
            multi = {
                DRUID = true,
            },
            single = "DRUID",
        },
        size = {
            multi = {},
        },
        spec = {
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
