
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["example_enemy_loose"] = {
    id = "Example Enemy Loose",
    uid = "SVG8Pdt0q3b",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 54,
    yOffset = 0,
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
                spellIds = {},
                subeventSuffix = "_CAST_START",
                unit = "player",
                names = {},
                event = "Health",
                subeventPrefix = "SPELL",
                check = "update",
                custom_type = "stateupdate",
                custom = [[function(allstates)
    -- Throttle the check for perf?  What is config?
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        -- Set the last time
        aura_env.last = GetTime()
        
        -- Start a count
        local enemyIndex = 0
        
        -- Iterate 40 times
        for i = 1, 40 do
            -- Concat string with index
            local unit = "nameplate"..i
            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation("player", unit)
            
            local unitCanAttack = UnitCanAttack("player", unit)
            local unitAffectingCombat = UnitAffectingCombat(unit)
            
            if unitCanAttack and unitAffectingCombat and not isTanking then
                enemyIndex = enemyIndex + 1
            end
        end
        
        if enemyIndex > 0 then
            allstates[""] = allstates[""] or {show = true}
            allstates[""].show = true
            allstates[""].changed = true
        else
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
        end
        
        return true
    end
end]],
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
