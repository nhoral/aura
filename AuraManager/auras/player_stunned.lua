
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_stunned"] = {
    id = "Player Stunned",
    uid = "NujnLnxy2iy",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 24,
    yOffset = -12,
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
                names = {},
                event = "Crowd Controlled",
                unit = "target",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_inverse = false,
                debuffType = "HELPFUL",
                use_unit = true,
                auranames = {
                    "Quick Flame Ward",
                },
                unitExists = false,
                matchesShowOn = "showOnActive",
                use_debuffClass = false,
                useName = true,
                useRem = false,
                debuffClass = {
                    magic = true,
                },
                use_controlType = true,
                use_interruptSchool = true,
                interruptSchool = 16,
                controlType = "STUN",
                auraspellids = {
                    "116",
                },
                useExactSpellId = false,
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
            single = "MAGE",
            multi = {
                ROGUE = true,
                MAGE = true,
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
