
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["omen_of_clarity_buff"] = {
    id = "Omen of Clarity Buff",
    uid = "HLZneWlFxUo",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 16,
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
                type = "aura2",
                names = {},
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Health",
                unit = "player",
                spellIds = {},
                debuffType = "HELPFUL",
                auranames = {
                    "Omen of Clarity",
                },
                matchesShowOn = "showOnActive",
                unitExists = false,
                use_debuffClass = false,
                useName = true,
                useNamePattern = false,
                useRem = false,
                ownOnly = true,
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
            single = "DRUID",
            multi = {
                DRUID = true,
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
