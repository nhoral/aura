
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["arcane_school_lockout"] = {
    id = "Arcane School Lockout",
    uid = "8sefkyUBlcG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 112,
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
                type = "unit",
                subeventSuffix = "_CAST_START",
                event = "Crowd Controlled",
                subeventPrefix = "SPELL",
                use_unit = true,
                spellIds = {},
                unit = "target",
                names = {},
                debuffType = "HELPFUL",
                unitExists = false,
                auranames = {
                    "Quick Flame Ward",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_inverse = false,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                auraspellids = {
                    "116",
                },
                useExactSpellId = false,
                use_controlType = true,
                use_interruptSchool = true,
                controlType = "SCHOOL_INTERRUPT",
                interruptSchool = 64,
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
                ROGUE = true,
                MAGE = true,
            },
            single = "MAGE",
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
