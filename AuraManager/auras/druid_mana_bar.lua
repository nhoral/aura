
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["druid_mana_bar"] = {
    id = "Druid Mana Bar",
    uid = "tb2J2DA2OYK",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 112,
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
        activeTriggerMode = 3,
        disjunctive = "custom",
        customTriggerLogic = [[function(trigger)
    return (trigger[1] or trigger[2]);
end]],
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                unit = "player",
                use_percentpower = false,
                subeventPrefix = "SPELL",
                powertype = 1,
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Power",
                use_powertype = true,
                debuffType = "HELPFUL",
                class = "DRUID",
                use_power = false,
                use_class = false,
                use_requirePowerType = true,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                unit = "player",
                use_percentpower = false,
                subeventPrefix = "SPELL",
                powertype = 3,
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Power",
                use_powertype = true,
                debuffType = "HELPFUL",
                class = "DRUID",
                use_power = false,
                use_class = false,
                use_requirePowerType = true,
            },
            untrigger = {},
        },
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                unit = "player",
                use_percentpower = false,
                subeventPrefix = "SPELL",
                powertype = 0,
                spellIds = {},
                use_unit = true,
                names = {},
                event = "Power",
                use_powertype = true,
                debuffType = "HELPFUL",
                class = "DRUID",
                use_power = false,
                use_class = false,
                use_requirePowerType = false,
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
            },
            single = "DRUID",
        },
        size = {
            multi = {},
        },
        race = {},
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
