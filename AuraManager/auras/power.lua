
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["power"] = {
    id = "Power",
    uid = "3GUkyZYJmPY",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 54,
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
        {
            trigger = {
                debuffType = "HELPFUL",
                type = "unit",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Power",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                use_unit = true,
                powertype = 3,
                use_powertype = true,
                use_percentpower = true,
            },
            untrigger = {},
        },
    },
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "10",
            },
            changes = {
                {
                    value = {
                        1,
                        0,
                        1,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        1,
                        0,
                        1,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "20",
            },
            changes = {
                {
                    value = {
                        0,
                        1,
                        1,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        0,
                        1,
                        1,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "30",
            },
            changes = {
                {
                    value = {
                        1,
                        1,
                        0,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        1,
                        1,
                        0,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "40",
            },
            changes = {
                {
                    value = {
                        0,
                        0,
                        1,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        0,
                        0,
                        1,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "50",
            },
            changes = {
                {
                    value = {
                        0,
                        1,
                        0,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        0,
                        1,
                        0,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "60",
            },
            changes = {
                {
                    value = {
                        1,
                        0.5,
                        0,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        1,
                        0.5,
                        0,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "70",
            },
            changes = {
                {
                    value = {
                        1,
                        0,
                        0,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        1,
                        0,
                        0,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "80",
            },
            changes = {
                {
                    value = {
                        0.5,
                        0,
                        1,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        0.5,
                        0,
                        1,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "90",
            },
            changes = {
                {
                    value = {
                        1,
                        0.5,
                        0.5,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        1,
                        0.5,
                        0.5,
                        1,
                    },
                    property = "backgroundColor",
                },
            },
        },
        {
            check = {
                trigger = 1,
                variable = "percentpower",
                op = "<",
                value = "100",
            },
            changes = {
                {
                    value = {
                        0.5,
                        1,
                        0.5,
                        1,
                    },
                    property = "barColor",
                },
                {
                    value = {
                        0.5,
                        1,
                        0.5,
                        1,
                    },
                    property = "backgroundColor",
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
                ROGUE = true,
                WARRIOR = true,
            },
            single = "WARRIOR",
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
