
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["aspect_of_the_cheetah"] = {
    id = "Aspect of the Cheetah",
    uid = "(OBPtsW(k47",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 0,
    yOffset = 0,
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
        {
            trigger = {
                debuffType = "HELPFUL",
                type = "aura2",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Conditions",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                useName = true,
                auranames = {
                    "Aspect of the Cheetah",
                },
                use_unit = true,
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 1,
            },
            changes = {
                {
                    property = "color",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 0,
            },
            changes = {
                {
                    value = {
                        1,
                        1,
                        1,
                        0,
                    },
                    property = "color",
                },
            },
        },
    },
    load = {
        use_never = false,
        talent = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {
                WARLOCK = true,
            },
            single = "WARLOCK",
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
