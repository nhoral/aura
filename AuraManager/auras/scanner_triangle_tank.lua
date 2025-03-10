
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_triangle_tank"] = {
    id = "Scanner Triangle Tank",
    uid = "YjgsNc9(hvY",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -604,
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
        
        -- Identify the tank (in this simplified version, it's the party leader)
        local tankUnit = "player"
        if inGroup then
            for i = 1, 4 do
                local partyUnit = "party" .. i
                if UnitExists(partyUnit) and UnitIsGroupLeader(partyUnit) then
                    tankUnit = partyUnit
                    break
                end
            end
        end
        
        -- Function to check if unit is valid for triangle marking
        local function isValidTriangleTarget(unit)
            -- Skip if unit is invalid
            if not UnitExists(unit) or 
            not UnitCanAttack("player", unit) or 
            not UnitAffectingCombat(unit) or
            UnitIsDeadOrGhost(unit) or
            UnitIsTapDenied(unit) then
                return false
            end
            
            -- Skip if unit has skull or diamond
            local currentMark = GetRaidTargetIndex(unit)
            if currentMark == 8 or currentMark == 3 then
                return false
            end
            
            -- Check if unit is NOT targeting the tank
            local targetUnit = unit .. "target"
            if UnitExists(targetUnit) and UnitIsUnit(targetUnit, tankUnit) then
                return false -- Unit IS targeting tank, so NOT valid for triangle
            end
            
            -- Unit is valid for triangle (not targeting tank)
            return true
        end 
        
        -- Function to get approximate range to unit
        local function getUnitRange(unit)
            if CheckInteractDistance(unit, 1) then -- 3.7 yards
                return 4
            elseif CheckInteractDistance(unit, 2) then -- 8.8 yards
                return 9
            elseif CheckInteractDistance(unit, 3) then -- 9.9 yards
                return 10
            elseif CheckInteractDistance(unit, 4) then -- 28 yards
                return 28
            end
            return 100 -- Far away or range check failed
        end
        
        -- Track best candidate for new mark
        local bestTarget = nil
        local bestRange = 100
        
        -- Single pass through all units
        for _, unit in ipairs(units) do
            -- Check if unit already has triangle
            if GetRaidTargetIndex(unit) == 4 then
                if isValidTriangleTarget(unit) then
                    -- Current triangle unit is still valid - keep it and exit early
                    return true
                else
                    -- Triangle-marked unit is no longer valid, clear mark
                    SetRaidTarget(unit, 0)
                end
            else
                -- Check if this is a potential new triangle target
                if isValidTriangleTarget(unit) then
                    -- Get range to prioritize closer targets
                    local range = getUnitRange(unit)
                    
                    -- Update best target if closer
                    if range < bestRange then
                        bestTarget = unit
                        bestRange = range
                    end
                end
            end
        end
        
        -- If we got here, no existing triangle was valid
        -- Mark best candidate with triangle if found
        if bestTarget then
            SetRaidTarget(bestTarget, 4)
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
