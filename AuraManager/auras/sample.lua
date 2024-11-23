
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["sample"] = {
    id = "Sample",
    uid = "qE)HwzrHToA",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 24,
    yOffset = -18,
    width = 5,
    height = 5,
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
                subeventPrefix = "SPELL",
                type = "custom",
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                names = {},
                event = "Health",
                debuffType = "HELPFUL",
                check = "update",
                duration = "1",
                custom_hide = "custom",
                custom = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        aura_env.last = GetTime()\n        local count = 0\n        for i=1,40 do\n            local unit = 'nameplate'..i\n            local unitExists = UnitExists(unit)    \n            local unitCanAttack = UnitCanAttack('player', unit)\n            local isInRange = IsItemInRange(10645, unit)\n            \n            if unitExists and unitCanAttack and isInRange then\n                count = count + 1\n            end\n        end\n        \n        if count >= 2 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n        return true\n    end\nend",
                unevent = "auto",
                custom_type = "stateupdate",
                customVariables = [[{
  stacks = true,
}]],
                use_absorbMode = true,
                customStacks = "function() return aura_env.count end",
            },
            untrigger = {},
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
