
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["sample"] = {
    id = "Sample",
    uid = "qE)HwzrHToA",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 18,
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
                debuffType = "HELPFUL",
                type = "custom",
                subeventSuffix = "_CAST_START",
                names = {},
                event = "Health",
                subeventPrefix = "SPELL",
                unit = "player",
                spellIds = {},
                duration = "1",
                custom_hide = "custom",
                custom = [[function(allstates)
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        local count = 0
        for i=1,40 do
            local unit = 'nameplate'..i
            local unitExists = UnitExists(unit)    
            local unitCanAttack = UnitCanAttack('player', unit)
            local isInRange = IsItemInRange(10645, unit)
            
            if unitExists and unitCanAttack and isInRange then
                count = count + 1
            end
        end
        
        if count >= 2 then
            allstates[""] = allstates[""] or {show = true}
            allstates[""].show = true
            allstates[""].changed = true
            return true
        end
        
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = false
        allstates[""].changed = true
        return true
    end
end]],
                custom_type = "stateupdate",
                check = "update",
                unevent = "auto",
                customVariables = [[{
  stacks = true,
}]],
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
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
