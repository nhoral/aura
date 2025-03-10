
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_skull"] = {
    id = "Scanner Skull",
    uid = "RmdkUoznpBf",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -620,
    yOffset = -331,
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
                duration = "1",
                use_unit = true,
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
                unevent = "auto",
                events = "PLAYER_TARGET_CHANGED",
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.lastUpdate or GetTime() - aura_env.lastUpdate > 0.1 then
        aura_env.lastUpdate = GetTime()
        
        -- Check if player is solo or party leader
        local inGroup = IsInGroup()
        local isLeader = UnitIsGroupLeader("player")
        
        -- Exit if in group but not leader
        if inGroup and not isLeader then
            return false
        end
        
        -- Collection of units to check
        local units = {}
        
        -- Add nameplate units
        for i = 1, 20 do
            if UnitExists("nameplate" .. i) then
                table.insert(units, "nameplate" .. i)
            end
        end
        
        -- Add other common units
        local otherUnits = {
            "target", "pettarget",
            "party1target", "party2target", "party3target", "party4target",
            "partypet1target", "partypet2target", "partypet3target", "partypet4target"
        }
        
        for _, unit in ipairs(otherUnits) do
            if UnitExists(unit) then
                table.insert(units, unit)
            end
        end
        
        -- Function to check if unit is a valid target for skull mark
        local function isValidSkullTarget(unit)
            -- Skip if unit is invalid
            if not UnitExists(unit) or 
            not UnitCanAttack("player", unit) or 
            UnitIsDeadOrGhost(unit) or
            UnitIsTapDenied(unit) then    
                return false
            end
            
            -- Valid potential skull target
            return true
        end
        
        -- Reliable range checking function
        local function getUnitRange(unit)
            -- Use interaction distance checks for consistent results
            if CheckInteractDistance(unit, 1) then -- 3.7 yards (inspection range)
                return 4
            elseif CheckInteractDistance(unit, 2) then -- 8.8 yards (trade range)
                return 9
            elseif CheckInteractDistance(unit, 3) then -- 9.9 yards (duel range)
                return 10
            elseif CheckInteractDistance(unit, 4) then -- 28 yards (follow range)
                return 28
            end
            
            -- Default to max range if no interaction is possible
            return 100
        end
        
        -- Variables to track best target
        local bestTarget = nil
        local bestHealthPct = 100
        local bestRange = 100
        
        -- Find the best target to mark with skull
        for _, unit in ipairs(units) do
            if isValidSkullTarget(unit) then
                -- Get health percentage
                local healthPct = UnitHealth(unit) / UnitHealthMax(unit) * 100
                
                -- Get range estimate
                local range = getUnitRange(unit)
                
                -- Check if this target is better than current best
                if healthPct < bestHealthPct or (healthPct == bestHealthPct and range < bestRange) then
                    bestTarget = unit
                    bestHealthPct = healthPct
                    bestRange = range
                end
            end
        end
        
        -- Mark best target with skull if not already marked
        if bestTarget and GetRaidTargetIndex(bestTarget) ~= 8 then
            SetRaidTarget(bestTarget, 8)
        end
    end
    
    return true
end]],
                check = "update",
                custom_type = "stateupdate",
                custom_hide = "timed",
                customVariables = [[{
  stacks = true,
}]],
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
        spec = {
            multi = {},
        },
        size = {
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
