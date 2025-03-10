
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_triangle_shaman"] = {
    id = "Scanner Triangle Shaman",
    uid = "YTiDm8JdSk2",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -608,
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
        
        -- Function to check if unit is targeting any party member (has aggro)
        local function isTargetingPartyMember(unit)
            local targetUnit = unit .. "target"
            -- Check if targeting player
            if UnitExists(targetUnit) and UnitIsUnit(targetUnit, "player") then
                return true
            end
            -- Check if targeting party members
            for i = 1, 4 do
                if UnitExists("party" .. i) and UnitIsUnit(targetUnit, "party" .. i) then
                    return true
                end
            end
            return false
        end
        
        -- Function to check if unit is a valid target for triangle mark
        local function isValidTriangleTarget(unit)
            -- Skip if unit is invalid
            if not UnitExists(unit) or 
            not UnitCanAttack("player", unit) or 
            UnitIsDeadOrGhost(unit) then
                return false
            end
            
            -- Skip if unit has skull or diamond mark
            local currentMark = GetRaidTargetIndex(unit)
            if currentMark == 8 or currentMark == 3 then
                return false
            end
            
            -- Must be targeting a party member
            return isTargetingPartyMember(unit)
        end
        
        -- Function to get approximate range to unit
        local function getUnitRange(unit)
            if CheckInteractDistance(unit, 2) then -- 9 yards
                return 10
            elseif CheckInteractDistance(unit, 4) then -- 28 yards
                return 30
            end
            return 200 -- Far away or range check failed
        end
        
        -- Check if current triangle-marked unit is still valid
        local currentTriangleUnit = nil
        for _, unit in ipairs(units) do
            if GetRaidTargetIndex(unit) == 4 then -- Triangle mark
                if isValidTriangleTarget(unit) then
                    -- Current triangle unit is still valid
                    currentTriangleUnit = unit
                    break
                else
                    -- Only clear if it doesn't have diamond now
                    local currentMark = GetRaidTargetIndex(unit)
                    if currentMark == 4 then
                        SetRaidTarget(unit, 0)
                        print("clearing triangle from " .. unit)
                    end
                end
            end
        end
        
        -- If we found a valid triangle unit, keep using it
        if currentTriangleUnit then
            return true
        end
        
        -- Find best new target to mark with triangle
        local bestTarget = nil
        local bestRange = 200
        
        for _, unit in ipairs(units) do
            if isValidTriangleTarget(unit) then
                local range = getUnitRange(unit)
                
                -- Update best target if closer
                if range < bestRange then
                    bestTarget = unit
                    bestRange = range
                end
            end
        end
        
        -- Mark best target with triangle
        if bestTarget then
            -- Double-check it doesn't have diamond
            if GetRaidTargetIndex(bestTarget) ~= 3 then
                SetRaidTarget(bestTarget, 4)
                print("setting triangle on " .. bestTarget)
            end
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
        use_never = true,
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
