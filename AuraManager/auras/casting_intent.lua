
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["casting_intent"] = {
    id = "Casting Intent",
    uid = "xy13p1UGJ0G",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -572,
    yOffset = -295,
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
                debuffType = "HELPFUL",
                event = "Health",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                events = "CVAR_UPDATE",
                custom = [[function(event,glStr,value)
    local cvar="CastingIntent"
    if glStr and value and glStr==cvar then
        return tonumber(value)==1
    elseif not glStr and not value then
        RegisterCVar(cvar,0)
    end
end]],
                check = "event",
                custom_type = "status",
            },
            untrigger = {
                custom = [[function(event,glStr,value)
    local cvar="CastingIntent"
    if glStr and value and glStr==cvar then
        return tonumber(value)==0
    end
end]],
            },
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
