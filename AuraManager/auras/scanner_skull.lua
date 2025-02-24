
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_skull"] = {
    id = "Scanner Skull",
    uid = "RmdkUoznpBf",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 216,
    yOffset = 72,
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
                custom_type = "stateupdate",
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.lastUpdate or GetTime() - aura_env.lastUpdate > 0.1 then
        aura_env.lastUpdate = GetTime()
        
        -- Check if player is solo or party leader
        local isLeader = UnitIsGroupLeader("player")
        local inGroup = IsInGroup()
        
        -- Exit if in group but not leader
        if inGroup and not isLeader then
            return false
        end
        
        -- Scan all possible targets
        local bestTarget = nil
        local bestHealthPct = 100
        local bestRange = 200
        
        -- Function to check a unit
        local function checkUnit(unit)
            if UnitExists(unit) and not UnitIsDeadOrGhost(unit) and UnitCanAttack("player", unit) then
                -- Get health percentage
                local healthPct = UnitHealth(unit) / UnitHealthMax(unit) * 100
                
                -- Get range
                local range = 200
                if CheckInteractDistance(unit, 2) then -- 9 yards
                    range = 10
                elseif CheckInteractDistance(unit, 4) then -- 28 yards
                    range = 30
                end
                
                -- Update best target if better
                if healthPct < bestHealthPct or (healthPct == bestHealthPct and range < bestRange) then
                    bestTarget = unit
                    bestHealthPct = healthPct
                    bestRange = range
                end
            end
        end
        
        -- Check nameplates (max 20)
        for i = 1, 20 do
            checkUnit("nameplate" .. i)
        end
        
        -- Check direct targets
        checkUnit("target")
        checkUnit("pettarget")
        
        -- Check party members and their targets/pets
        for i = 1, 4 do
            local partyUnit = "party" .. i
            checkUnit(partyUnit .. "target")
            checkUnit("partypet" .. i .. "target")
        end
        
        -- Mark best target with skull if not already marked
        if bestTarget and GetRaidTargetIndex(bestTarget) ~= 8 then
            SetRaidTarget(bestTarget, 8)
        end
    end
    
    return true
end]],
                customStacks = [[function() return aura_env.count end]],
                events = "PLAYER_TARGET_CHANGED",
                unevent = "auto",
                use_absorbMode = true,
                check = "update",
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
