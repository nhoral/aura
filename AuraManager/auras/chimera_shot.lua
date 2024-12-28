
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["chimera_shot"] = {
    id = "Chimera Shot",
    uid = "EaqzsuvVpdn",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 60,
    yOffset = 0,
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
        disjunctive = "all",
        {
            trigger = {
                type = "spell",
                subeventSuffix = "_CAST_START",
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Cooldown Progress (Spell)",
                debuffType = "HELPFUL",
                use_exact_spellName = false,
                use_genericShowOn = true,
                realSpellName = "Chimera Shot",
                use_spellName = true,
                genericShowOn = "showOnReady",
                spellName = 409433,
                use_track = true,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "spell",
                subeventSuffix = "_CAST_START",
                unit = "player",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Action Usable",
                debuffType = "HELPFUL",
                use_exact_spellName = false,
                use_genericShowOn = true,
                realSpellName = "Chimera Shot",
                use_spellName = true,
                genericShowOn = "showOnReady",
                spellName = 409433,
                use_track = true,
                use_inverse = false,
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
                DRUID = true,
                ROGUE = true,
                HUNTER = true,
            },
            single = "HUNTER",
        },
        size = {
            multi = {},
        },
        race = {
            multi = {
                Scourge = true,
            },
            single = "Scourge",
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
