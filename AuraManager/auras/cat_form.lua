
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["cat_form"] = {
    id = "Cat Form",
    uid = ")AGNKccPVqZ",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 172,
    yOffset = 100,
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
                names = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                event = "Stance/Form/Aura",
                subeventPrefix = "SPELL",
                use_unit = true,
                spellIds = {},
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Cat Form",
                },
                matchesShowOn = "showOnActive",
                useName = true,
                useRem = false,
                use_debuffClass = false,
                useNamePattern = false,
                use_form = true,
                form = {
                    single = 2,
                },
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
