
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["undead_or_mechanical"] = {
    id = "Undead or Mechanical",
    uid = "aNMpteUzJ7h",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 72,
    yOffset = -20,
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
                debuffType = "HELPFUL",
                type = "custom",
                subeventPrefix = "SPELL",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                unit = "player",
                custom_type = "status",
                spellIds = {},
                custom = [[function()
    return UnitExists("target") and (UnitCreatureType("target") == "Elemental" or UnitCreatureType("target") == "Mechanical")
end]],
                check = "event",
                events = "PLAYER_TARGET_CHANGED",
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
            multi = {},
        },
        size = {
            multi = {},
        },
        spec = {
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
