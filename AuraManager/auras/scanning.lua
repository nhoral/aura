
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanning"] = {
    id = "Scanning",
    uid = "OOxT7UpjMVd",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 116,
    yOffset = 68,
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
                events = "CVAR_UPDATE",
                custom = [[function(event, glStr, value)
    local cvar = "WeakAurasScannerToggle"
    if glStr and value and glStr == cvar then
        -- Return true if the CVar exists and has any value
        return value ~= "OFF" and value ~= nil
    elseif not glStr and not value then
        -- Register the CVar if it doesn't exist
        RegisterCVar(cvar, "OFF")
    end
end]],
                check = "event",
            },
            untrigger = {
                custom = "",
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
        use_never = true,
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
