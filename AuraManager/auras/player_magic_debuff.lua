
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_magic_debuff"] = {
    id = "Player Magic Debuff",
    uid = "BTOft2KQ1ws",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 172,
    yOffset = 80,
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
                type = "aura2",
                subeventSuffix = "_CAST_START",
                debuffType = "HARMFUL",
                event = "Crowd Controlled",
                names = {},
                unitExists = false,
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Quick Flame Ward",
                },
                useName = false,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_inverse = false,
                use_unit = true,
                use_debuffClass = true,
                debuffClass = {
                    magic = true,
                },
                use_controlType = true,
                use_interruptSchool = true,
                interruptSchool = 16,
                controlType = "STUN",
                useExactSpellId = false,
                auraspellids = {
                    "116",
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
