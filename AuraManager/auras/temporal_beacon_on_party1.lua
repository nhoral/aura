
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["temporal_beacon_on_party1"] = {
    id = "Temporal Beacon on Party1",
    uid = "aS1FDsk8jS0",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 20,
    yOffset = -20,
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
        {
            trigger = {
                type = "aura2",
                subeventSuffix = "_CAST_START",
                unit = "member",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Health",
                debuffType = "HELPFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = true,
                auranames = {
                    "400735",
                },
                useName = true,
                useRem = true,
                use_debuffClass = false,
                specificUnit = "party1",
                rem = "5",
                remOperator = ">",
                fetchTooltip = true,
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
                ROGUE = true,
                MAGE = true,
            },
            single = "MAGE",
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
