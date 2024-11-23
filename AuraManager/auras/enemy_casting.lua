
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["enemy_casting"] = {
    id = "Enemy Casting",
    uid = "8YW6jgjk4nd",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 30,
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
                subeventPrefix = "SPELL",
                type = "unit",
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "target",
                names = {},
                event = "Cast",
                debuffType = "HELPFUL",
                use_unit = true,
                use_interruptible = true,
                remaining_operator = "<",
                remaining = "1",
                use_remaining = false,
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
                    value = {
                        1,
                        1,
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
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
            multi = {},
        },
        talent = {
            multi = {},
        },
        use_never = false,
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
