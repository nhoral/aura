
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_rooted"] = {
    id = "Player Rooted",
    uid = "eKQmIc6vhgK",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -552,
    yOffset = -319,
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
                debuffType = "HELPFUL",
                event = "Crowd Controlled",
                names = {},
                unitExists = false,
                unit = "target",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Quick Flame Ward",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_inverse = false,
                use_unit = true,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                use_controlType = true,
                use_interruptSchool = true,
                useExactSpellId = false,
                controlType = "ROOT",
                auraspellids = {
                    "116",
                },
                interruptSchool = 16,
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
