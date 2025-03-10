
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["strength_of_earth_totem_dropped"] = {
    id = "Strength of Earth Totem Dropped",
    uid = "BkEBAf9zkFG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -644,
    yOffset = -335,
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
                type = "spell",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Totem",
                names = {},
                unitExists = false,
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                auranames = {
                    "Demon Skin",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_genericShowOn = true,
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_track = true,
                use_itemName = true,
                enchant = "Rockbiter",
                use_weapon = true,
                use_showOn = true,
                showOn = "showOnActive",
                use_enchant = true,
                weapon = "main",
                totemName = "Strength of Earth Totem",
                use_totemName = true,
                use_totemNamePattern = false,
                use_totemType = false,
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
                ROGUE = true,
            },
            single = "ROGUE",
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
