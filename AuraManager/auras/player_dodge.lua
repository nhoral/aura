
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_dodge"] = {
    id = "Player Dodge",
    uid = "DSTkwC9zuQ)",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 196,
    yOffset = 84,
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
        disjunctive = "any",
        activeTriggerMode = -10,
        {
            trigger = {
                type = "combatlog",
                subeventSuffix = "_MISSED",
                duration = "4",
                event = "Combat Log",
                subeventPrefix = "SWING",
                spellIds = {},
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                genericShowOn = "showOnCooldown",
                realSpellName = "Revenge",
                use_spellName = true,
                use_genericShowOn = true,
                use_track = true,
                spellName = 6572,
                use_sourceUnit = true,
                use_destFlags2 = false,
                use_missType = true,
                sourceUnit = "target",
                missType = "DODGE",
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
                WARRIOR = true,
            },
            single = "WARRIOR",
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
