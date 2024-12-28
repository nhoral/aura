
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["combo_1"] = {
    id = "Combo 1",
    uid = "JVtaqPHyYpU",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 12,
    yOffset = 0,
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
                useRem = false,
                type = "unit",
                use_incombat = true,
                subeventSuffix = "_CAST_START",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                event = "Power",
                subeventPrefix = "SPELL",
                unitExists = false,
                use_unit = true,
                spellIds = {},
                auranames = {
                    "Demon Skin",
                },
                useName = true,
                unit = "player",
                names = {},
                debuffType = "BOTH",
                use_power = true,
                powertype = 4,
                use_powertype = true,
                power_operator = {
                    ">=",
                },
                power = {
                    "1",
                },
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
            multi = {
                DRUID = true,
            },
            single = "DRUID",
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
