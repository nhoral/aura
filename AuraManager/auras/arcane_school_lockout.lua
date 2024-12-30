
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["arcane_school_lockout"] = {
    id = "Arcane School Lockout",
    uid = "8sefkyUBlcG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 16,
    yOffset = 0,
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
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                event = "Crowd Controlled",
                names = {},
                spellIds = {},
                use_unit = true,
                subeventPrefix = "SPELL",
                unit = "target",
                useRem = false,
                matchesShowOn = "showOnActive",
                unitExists = false,
                useName = true,
                auranames = {
                    "Quick Flame Ward",
                },
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                auraspellids = {
                    "116",
                },
                useExactSpellId = false,
                use_inverse = false,
                use_controlType = true,
                use_interruptSchool = true,
                interruptSchool = 64,
                controlType = "SCHOOL_INTERRUPT",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {
                ROGUE = true,
                MAGE = true,
            },
            single = "MAGE",
        },
        talent = {
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
