
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_silenced"] = {
    id = "Player Silenced",
    uid = "kkr98SL4nFr",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 188,
    yOffset = 80,
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
        disjunctive = "any",
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Crowd Controlled",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                spellName = 5176,
                use_genericShowOn = true,
                realSpellName = "Wrath",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                use_inverse = false,
                use_track = true,
                use_unit = true,
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_controlType = true,
                controlType = "SILENCE",
                use_message = false,
                instance_size = {},
                use_sourceName = false,
                use_moveSpeed = false,
                use_targetRequired = false,
                use_ismoving = true,
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
