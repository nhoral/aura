
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner"] = {
    id = "Scanner",
    uid = "Gf8InAovkXp",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 148,
    yOffset = 76,
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
                unit = "player",
                duration = "1",
                event = "Health",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom_type = "stateupdate",
                custom = [[function(allstates, event)
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        -- Initialize our mark storage if it doesn't exist
        aura_env.marks = aura_env.marks or {}
        
        -- Available marks in priority order
        local MARKS = {8, 7, 2, 3, 6, 4, 1, 5}  -- Skull, Cross, Circle, Diamond, Square, Moon, Star, Triangle
        
        -- Track current enemies and their GUIDs
        local currentEnemies = {}
        local enemyList = {}  -- Ordered list for consistent assignment
        
        -- First pass: Identify all valid targets
        for i = 1, 40 do
            local unit = "nameplate"..i
            if UnitExists(unit) and UnitCanAttack("player", unit) then
                local guid = UnitGUID(unit)
                if guid then
                    currentEnemies[guid] = unit
                    table.insert(enemyList, guid)
                end
            end
        end
        
        -- Clean up marks for enemies no longer present
        for guid, mark in pairs(aura_env.marks) do
            if not currentEnemies[guid] then
                aura_env.marks[guid] = nil
            end
        end
        
        -- Assign marks to unmarked targets and adjust existing marks
        for i, guid in ipairs(enemyList) do
            local unit = currentEnemies[guid]
            local currentMark = GetRaidTargetIndex(unit)
            
            -- If we set this mark previously
            if aura_env.marks[guid] then
                -- Clear if it needs a higher priority mark
                if i <= #MARKS and MARKS[i] ~= aura_env.marks[guid] then
                    SetRaidTarget(unit, 0)
                    aura_env.marks[guid] = MARKS[i]
                    SetRaidTarget(unit, MARKS[i])
                end
                -- If no mark exists and we have one available
            elseif not currentMark and i <= #MARKS then
                aura_env.marks[guid] = MARKS[i]
                SetRaidTarget(unit, MARKS[i])
            end
        end
        
        -- Update state for visualization
        allstates[""] = {
            changed = true,
            show = true,
            activeMarks = aura_env.marks
        }
        
        return true
    end
end]],
                spellIds = {},
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
        class = {
            multi = {
                WARRIOR = true,
            },
            single = "WARRIOR",
        },
        size = {
            multi = {},
        },
        spec = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
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
