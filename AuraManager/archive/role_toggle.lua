
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["role_toggle"] = {
    id = "Role Toggle",
    uid = "kZsY(XvrsI5",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 68,
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
        {
            trigger = {
                type = "custom",
                debuffType = "HELPFUL",
                subeventSuffix = "_CAST_START",
                event = "Health",
                unit = "player",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                custom = [[function(event,glStr,value)
    local cvar="WeakaurasCustomToggle1"
    if glStr and value and glStr==cvar then
        return tonumber(value)==1
    elseif not glStr and not value then
        RegisterCVar(cvar,0)
    end
end]],
                custom_type = "status",
                check = "event",
                events = "CVAR_UPDATE",
            },
            untrigger = {
                custom = [[function(event,glStr,value)
    local cvar="WeakaurasCustomToggle1"
    if glStr and value and glStr==cvar then
        return tonumber(value)==0
    end
end]],
            },
        },
    },
    conditions = {},
    load = {
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        class = {
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
