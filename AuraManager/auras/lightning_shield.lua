
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["lightning_shield"] = {
    id = "Lightning Shield",
    uid = "Ub6mYawCKwb",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 42,
    yOffset = -6,
    width = 5,
    height = 5,
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
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                spellIds = {},
                auranames = {
                    "Lightning Shield",
                },
                useName = true,
                unit = "player",
                names = {},
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                genericShowOn = "showAlways",
                spellName = 324,
                realSpellName = "Lightning Shield",
                use_spellName = true,
                use_track = true,
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "insufficientResources",
                value = 1,
            },
            changes = {
                {
                    value = {
                        0.5,
                        0.5,
                        1,
                        1,
                    },
                    property = "color",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "onCooldown",
                value = 1,
            },
            changes = {
                {
                    value = {
                        0.5,
                        0.5,
                        0.5,
                        1,
                    },
                    property = "color",
                },
            },
        },
    },
    load = {
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {},
            single = "SHAMAN",
        },
        size = {
            multi = {},
        },
        use_class = true,
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
