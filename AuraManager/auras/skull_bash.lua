
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["skull_bash"] = {
    id = "Skull Bash",
    uid = "jewvp3HnpGG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 36,
    yOffset = -16,
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
        disjunctive = "any",
        activeTriggerMode = -10,
        {
            trigger = {
                type = "spell",
                names = {},
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                event = "Action Usable",
                unit = "player",
                realSpellName = "Skull Bash",
                use_spellName = true,
                spellIds = {},
                spellName = 410176,
                genericShowOn = "showOnCooldown",
                use_inverse = false,
                use_track = true,
                debuffType = "HELPFUL",
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        race = {
            single = "Scourge",
            multi = {
                Scourge = true,
            },
        },
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            single = "DRUID",
            multi = {
                HUNTER = true,
                DRUID = true,
                ROGUE = true,
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
