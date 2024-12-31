
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["swing_timer_at_max"] = {
    id = "Swing Timer at Max",
    uid = "gpO80VTBfU0",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 52,
    yOffset = -16,
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
                event = "Swing Timer",
                unit = "player",
                spellIds = {},
                use_inverse = false,
                debuffType = "BOTH",
                use_unit = true,
                auranames = {
                    "Demon Skin",
                },
                matchesShowOn = "showOnActive",
                unitExists = false,
                useName = true,
                useRem = false,
                ownOnly = true,
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
        spec = {
            multi = {},
        },
        class = {
            single = "DRUID",
            multi = {
                DRUID = true,
            },
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
