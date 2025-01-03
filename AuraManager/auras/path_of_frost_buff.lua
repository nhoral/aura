
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["path_of_frost_buff"] = {
    id = "Path of Frost Buff",
    uid = "V5zZN1WZDoG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 80,
    yOffset = -8,
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
                debuffType = "HELPFUL",
                type = "aura2",
                subeventPrefix = "SPELL",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                unit = "player",
                spellIds = {},
                auranames = {
                    "Path of Frost",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                use_debuffClass = false,
                matchesShowOn = "showOnActive",
                useNamePattern = false,
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
