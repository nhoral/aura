
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_not_behind_target"] = {
    id = "Player not behind target",
    uid = "VpGXA06c4Qk",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 124,
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
        {
            trigger = {
                type = "custom",
                custom_hide = "timed",
                subeventSuffix = "_CAST_START",
                duration = ".5",
                event = "Crowd Controlled",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(event, arg1, arg2)
    if event == "UI_ERROR_MESSAGE" and string.find(arg2, "be behind your") then
        return true
    end
    return false
end]],
                spellIds = {},
                custom_type = "event",
                unit = "target",
                names = {},
                debuffType = "HELPFUL",
                unitExists = false,
                auranames = {
                    "Quick Flame Ward",
                },
                useName = true,
                matchesShowOn = "showOnActive",
                useRem = false,
                use_inverse = false,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                events = "UI_ERROR_MESSAGE",
                auraspellids = {
                    "116",
                },
                useExactSpellId = false,
                use_controlType = true,
                use_interruptSchool = true,
                controlType = "ROOT",
                interruptSchool = 16,
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
                MAGE = true,
            },
            single = "MAGE",
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
