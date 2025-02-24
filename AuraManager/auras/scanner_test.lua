
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_test"] = {
    id = "Scanner Test",
    uid = "sM(8UMnP35V",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 100,
    yOffset = 68,
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
                custom_type = "event",
                custom = [[function(allstates, event)
    -- Initialize aura environment if it doesn't exist
    if not aura_env then aura_env = {} end
    -- Initialize enemies table if it doesn't exist
    if not aura_env.enemies then aura_env.enemies = {} end
    
    local currentGUID = UnitGUID("target")
    if not currentGUID then return false end
    
    -- Get the scanning GUID from CVar
    local scanningGUID = GetCVar("WeakAurasScannerToggle")
    if scanningGUID == "0" then return false end
    
    -- Record target information
    local health = UnitHealth("target") / UnitHealthMax("target")
    local distance = CheckInteractDistance("target", 3) and 10 or 30 -- Rough distance check
    local isCasting = UnitCastingInfo("target") ~= nil
    local isMoving = GetUnitSpeed("target") > 0
    local classification = UnitClassification("target")
    
    aura_env.enemies[currentGUID] = {
        health = health,
        distance = distance,
        isCasting = isCasting,
        isMoving = isMoving,
        classification = classification,
        name = UnitName("target")
    }
    
    -- If we've found our initial target again, process marks
    if currentGUID == scanningGUID then
        -- Find lowest health target for Skull
        local lowestHealth = 1
        local skullTarget = nil
        for guid, data in pairs(aura_env.enemies) do
            if data.health < lowestHealth then
                lowestHealth = data.health
                skullTarget = guid
            end
        end
        
        -- Find optimal pet target for Circle
        -- Prefer closer targets that aren't moving
        local bestPetScore = -1
        local circleTarget = nil
        for guid, data in pairs(aura_env.enemies) do
            if guid ~= skullTarget then
                local petScore = 0
                if data.distance <= 10 then petScore = petScore + 2 end
                if not data.isMoving then petScore = petScore + 1 end
                if data.classification == "elite" then petScore = petScore - 1 end
                
                if petScore > bestPetScore then
                    bestPetScore = petScore
                    circleTarget = guid
                end
            end
        end
        
        -- Find optimal slow target for Cross
        -- Prefer moving targets that aren't already marked
        local bestSlowScore = -1
        local crossTarget = nil
        for guid, data in pairs(aura_env.enemies) do
            if guid ~= skullTarget and guid ~= circleTarget then
                local slowScore = 0
                if data.isMoving then slowScore = slowScore + 2 end
                if data.distance <= 30 then slowScore = slowScore + 1 end
                
                if slowScore > bestSlowScore then
                    bestSlowScore = slowScore
                    crossTarget = guid
                end
            end
        end
        
        -- Find optimal interrupt target for Diamond
        -- Prefer casting targets that aren't already marked
        local bestInterruptScore = -1
        local diamondTarget = nil
        for guid, data in pairs(aura_env.enemies) do
            if guid ~= skullTarget and guid ~= circleTarget and guid ~= crossTarget then
                if data.isCasting then
                    local interruptScore = 2
                    if data.distance <= 30 then interruptScore = interruptScore + 1 end
                    
                    if interruptScore > bestInterruptScore then
                        bestInterruptScore = interruptScore
                        diamondTarget = guid
                    end
                end
            end
        end
        
        -- Apply marks if target matches
        if currentGUID == skullTarget then
            SetRaidTarget("target", 8) -- Skull
        elseif currentGUID == circleTarget then
            SetRaidTarget("target", 2) -- Circle
        elseif currentGUID == crossTarget then
            SetRaidTarget("target", 7) -- Cross
        elseif currentGUID == diamondTarget then
            SetRaidTarget("target", 3) -- Diamond
        end
        
        -- Clear the scanning state
        SetCVar("WeakAurasScannerToggle", "0")
        aura_env.enemies = {}
        return false
    end
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
