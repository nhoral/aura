
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["humanoid_form"] = {
    id = "Humanoid Form",
    uid = "3QwwoFQ1hvm",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 60,
    yOffset = -4,
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
                debuffType = "BOTH",
                subeventSuffix = "_CAST_START",
                unit = "player",
                event = "Stance/Form/Aura",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                use_unit = true,
                auranames = {
                    "Bear Form",
                },
                unitExists = false,
                useRem = false,
                useName = true,
                use_debuffClass = false,
                matchesShowOn = "showOnActive",
                useNamePattern = false,
                ownOnly = true,
                use_form = true,
                form = {
                    single = 0,
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
