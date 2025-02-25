
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["casting_intent_off"] = {
    id = "Casting Intent Off",
    uid = "7qJpTj5sXow",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 188,
    yOffset = 100,
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
                subeventSuffix = "_CAST_START",
                event = "Health",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                custom_type = "status",
                events = [[UNIT_SPELLCAST_SUCCEEDED 
UNIT_SPELLCAST_FAILED
UNIT_SPELLCAST_INTERRUPTED
UNIT_SPELLCAST_STOP]],
                custom = [[function(allstates, event, ...)
    if event == "UNIT_SPELLCAST_SUCCEEDED" 
    or event == "UNIT_SPELLCAST_FAILED" 
    or event == "UNIT_SPELLCAST_INTERRUPTED" 
    or event == "UNIT_SPELLCAST_STOP" then
        local unit = ...
        if unit == "player" then
            -- Turn off the CastingIntent CVar
            ConsoleExec("CastingIntent 0")
            return true
        end
    end
    return false
end]],
                check = "event",
            },
            untrigger = {
                custom = [[

]],
            },
        },
    },
    conditions = {},
    load = {
        size = {
            multi = {},
        },
        class = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        talent = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        role = {
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
