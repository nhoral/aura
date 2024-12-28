
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["savage_roar"] = {
    id = "Savage Roar",
    uid = "JFEKNlbk(E3",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 64,
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
        activeTriggerMode = -10,
        disjunctive = "any",
        {
            trigger = {
                type = "aura2",
                subeventSuffix = "_CAST_START",
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Health",
                debuffType = "HELPFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "407988",
                },
                useName = true,
                useRem = false,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "spell",
                unit = "player",
                event = "Action Usable",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                realSpellName = "Savage Roar",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 407988,
                use_track = true,
                use_inverse = true,
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
                DRUID = true,
            },
            single = "DRUID",
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
