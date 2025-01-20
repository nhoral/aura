
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_not_behind_target"] = {
    id = "Player not behind target",
    uid = "VpGXA06c4Qk",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 204,
    yOffset = 84,
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
                names = {},
                subeventSuffix = "_CAST_START",
                unit = "target",
                duration = ".5",
                event = "Crowd Controlled",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom_type = "event",
                custom = [[function(event, arg1, arg2)
    if event == "UI_ERROR_MESSAGE" and string.find(arg2, "be behind your") then
        return true
    end
    return false
end]],
                spellIds = {},
                custom_hide = "timed",
                unitExists = false,
                auranames = {
                    "Quick Flame Ward",
                },
                matchesShowOn = "showOnActive",
                useName = true,
                useRem = false,
                use_inverse = false,
                use_debuffClass = false,
                debuffClass = {
                    magic = true,
                },
                use_controlType = true,
                use_interruptSchool = true,
                interruptSchool = 16,
                controlType = "ROOT",
                useExactSpellId = false,
                auraspellids = {
                    "116",
                },
                events = "UI_ERROR_MESSAGE",
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
