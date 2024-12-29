
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["skull_bash_cooldown"] = {
    id = "Skull Bash Cooldown",
    uid = "jewvp3HnpGG",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 72,
    yOffset = -16,
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
        disjunctive = "any",
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
                realSpellName = "Skull Bash",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 410176,
                use_track = true,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "spell",
                unit = "player",
                event = "Action Usable",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                realSpellName = "Skull Bash",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 410176,
                use_track = true,
                use_inverse = true,
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
            single = "DRUID",
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