
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_has_pet"] = {
    id = "Player Has Pet",
    uid = "3wfhB47QNJ6",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -568,
    yOffset = -319,
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
        activeTriggerMode = -10,
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Conditions",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                use_unit = true,
                itemName = 0,
                use_itemName = true,
                behavior = "passive",
                use_petspec = false,
                use_HasPet = true,
                use_behavior = true,
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
                WARLOCK = true,
            },
            single = "WARLOCK",
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
