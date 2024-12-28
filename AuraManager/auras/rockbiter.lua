
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["rockbiter"] = {
    id = "Rockbiter",
    uid = "nPyUfySCjCV",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 36,
    yOffset = -18,
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
                type = "item",
                subeventSuffix = "_CAST_START",
                subeventPrefix = "SPELL",
                event = "Weapon Enchant",
                names = {},
                unit = "player",
                spellIds = {},
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                enchant = "Rockbiter",
                itemName = 0,
                use_weapon = true,
                use_showOn = true,
                showOn = "showOnActive",
                use_itemName = true,
                use_enchant = true,
                weapon = "main",
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
