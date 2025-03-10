
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_triangle"] = {
    id = "Scanner Triangle",
    uid = "cXYo1uJM7QW",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -612,
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
        
        -- Scan all possible targets
        local bestTarget = nil
        local bestRange = 200
        
        -- Function to check if unit is targeting any pet
        local function isTargetingPet(unit)
            local targetUnit = unit .. "target"
            -- Check player's pet
            if UnitExists("pet") and UnitIsUnit(targetUnit, "pet") then
                return true
            end
            -- Check party pets
            for i = 1, 4 do
                local partyPet = "partypet" .. i
                if UnitExists(partyPet) and UnitIsUnit(targetUnit, partyPet) then
                    return true
                end
            end
            return false
        end
        
        -- Function to check a unit
        local function checkUnit(unit)
            if UnitExists(unit) and UnitCanAttack("player", unit) then
                -- Clear triangle if unit is targeting a pet
                if GetRaidTargetIndex(unit) == 4 and isTargetingPet(unit) then
                    SetRaidTarget(unit, 0)
                    return
                end
                
                -- Skip if unit has skull or already has triangle
                local currentMark = GetRaidTargetIndex(unit)
                if currentMark == 8 or currentMark == 4 then return end
                
                -- Check if unit is attacking a friendly player
                local targetUnit = unit .. "target"
                if UnitExists(targetUnit) and UnitIsPlayer(targetUnit) and not UnitCanAttack("player", targetUnit) then
                    -- Skip if unit is already being tanked by any pet
                    if not isTargetingPet(unit) then
                        -- Get range
                        local range = 200
                        if CheckInteractDistance(unit, 2) then -- 9 yards
                            range = 10
                        elseif CheckInteractDistance(unit, 4) then -- 28 yards
                            range = 30
                        end
                        
                        -- Update best target if closer
                        if range < bestRange then
                            bestTarget = unit
                            bestRange = range
                        end
                    end
                end
            end
        end
        
        -- Check all units
        for i = 1, 20 do
            checkUnit("nameplate" .. i)
        end
        checkUnit("target")
        checkUnit("pettarget")
        for i = 1, 4 do
            local partyUnit = "party" .. i
            checkUnit(partyUnit .. "target")
            checkUnit("partypet" .. i .. "target")
        end
        
        -- Mark best target with triangle if not already marked
        if bestTarget and GetRaidTargetIndex(bestTarget) ~= 4 then
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
