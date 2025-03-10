
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["party1_power_word_fortitude_buff"] = {
    id = "Party1 Power Word Fortitude Buff",
    uid = "xTj7TAlRFvy",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -556,
    yOffset = -311,
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
                debuffType = "HELPFUL",
                event = "Health",
                names = {},
                unit = "member",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Power Word: Fortitude",
                },
                useName = true,
                use_genericShowOn = true,
                realSpellName = "Power Word: Fortitude",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                spellName = 1243,
                use_unit = true,
                specificUnit = "party1",
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
                PRIEST = true,
            },
            single = "PRIEST",
        },
        spec = {
            multi = {},
        },
        size = {
            multi = {},
        },
        race = {
            multi = {
                Scourge = true,
            },
            single = "Scourge",
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
