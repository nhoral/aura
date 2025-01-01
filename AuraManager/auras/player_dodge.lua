
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_dodge"] = {
    id = "Player Dodge",
    uid = "DSTkwC9zuQ)",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 116,
    yOffset = -8,
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
                type = "combatlog",
                spellName = 6572,
                subeventSuffix = "_MISSED",
                names = {},
                use_genericShowOn = true,
                event = "Combat Log",
                unit = "player",
                realSpellName = "Revenge",
                use_spellName = true,
                spellIds = {},
                subeventPrefix = "SWING",
                genericShowOn = "showOnCooldown",
                use_track = true,
                debuffType = "HELPFUL",
                use_sourceUnit = true,
                duration = "4",
                use_destFlags2 = false,
                use_missType = true,
                missType = "DODGE",
                sourceUnit = "target",
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
            single = "WARRIOR",
            multi = {
                WARRIOR = true,
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
