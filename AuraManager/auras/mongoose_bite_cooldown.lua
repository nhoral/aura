
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["mongoose_bite_cooldown"] = {
    id = "Mongoose Bite Cooldown",
    uid = "vPEVM7)w8Aw",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 88,
    yOffset = -8,
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
                type = "spell",
                subeventSuffix = "_CAST_START",
                unit = "target",
                subeventPrefix = "SPELL",
                spellIds = {},
                names = {},
                event = "Cooldown Progress (Spell)",
                debuffType = "HARMFUL",
                matchesShowOn = "showOnActive",
                ownOnly = true,
                unitExists = false,
                auranames = {
                    "Concussive Shot",
                },
                useName = true,
                useRem = false,
                use_genericShowOn = true,
                realSpellName = "Concussive Shot",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 5116,
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
            multi = {
                HUNTER = true,
            },
            single = "HUNTER",
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
