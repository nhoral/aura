
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["frost_school_lockout"] = {
    id = "Frost School Lockout",
    uid = "BeGnPLJ7Csc",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 72,
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
                subeventSuffix = "_CAST_START",
                unit = "target",
                subeventPrefix = "SPELL",
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Crowd Controlled",
                debuffType = "HELPFUL",
                matchesShowOn = "showOnActive",
                unitExists = false,
                auranames = {
                    "Quick Flame Ward",
                },
                useName = true,
                useRem = false,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                useExactSpellId = false,
                auraspellids = {
                    "116",
                },
                use_inverse = false,
                use_controlType = true,
                use_interruptSchool = true,
                interruptSchool = 16,
                controlType = "SCHOOL_INTERRUPT",
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
            multi = {
                ROGUE = true,
                MAGE = true,
            },
            single = "MAGE",
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
