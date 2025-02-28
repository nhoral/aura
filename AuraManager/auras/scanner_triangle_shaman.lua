
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_triangle_shaman"] = {
    id = "Scanner Triangle Shaman",
    uid = "YTiDm8JdSk2",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -568,
    yOffset = -327,
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
                duration = "1",
                custom_hide = "timed",
                unevent = "auto",
                customStacks = [[function() return aura_env.count end]],
                use_absorbMode = true,
                events = "PLAYER_TARGET_CHANGED",
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.lastUpdate or GetTime() - aura_env.lastUpdate > 0.1 then
        aura_env.lastUpdate = GetTime()
        
        -- Scan all possible targets
        local bestTarget = nil
        local bestRange = 200
        
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
        
        -- Function to check a unit
        local function checkUnit(unit)
            if UnitExists(unit) and UnitCanAttack("player", unit) and not UnitIsDeadOrGhost(unit) then
                local currentMark = GetRaidTargetIndex(unit)
                
                -- Skip if unit has skull
                if currentMark == 8 then return end
                
                -- Clear triangle if unit no longer has aggro
                if currentMark == 4 and not isTargetingPartyMember(unit) then
                    SetRaidTarget(unit, 0)
                    return
                end
                
                -- Check if unit is attacking any party member
                if isTargetingPartyMember(unit) then
                    -- Get range
                    local range = 200
                    if CheckInteractDistance(unit, 2) then -- 9 yards
                        range = 10
                    elseif CheckInteractDistance(unit, 4) then -- 28 yards
                        range = 30
                    end
                    
                    -- Update best target if closer or already marked with triangle
                    if currentMark == 4 or range < bestRange then
                        bestTarget = unit
                        bestRange = range
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
                use_unit = true,
                customVariables = [[{
  stacks = true,
}]],
            },
            untrigger = {},
        },
    },
    conditions = {},
    load = {
        size = {
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
        talent = {
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
