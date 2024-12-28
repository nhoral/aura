
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["stoneclaw_totem"] = {
    id = "Stoneclaw Totem",
    uid = "ps5og0irCUA",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 0,
    yOffset = -24,
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
                type = "spell",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Action Usable",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                use_genericShowOn = true,
                genericShowOn = "showOnCooldown",
                realSpellName = "Stoneclaw Totem",
                use_spellName = true,
                spellName = 5730,
                use_track = true,
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
