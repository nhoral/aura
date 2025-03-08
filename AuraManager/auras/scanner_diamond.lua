
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_diamond"] = {
    id = "Scanner Diamond",
    uid = "erNvZYrAHDX",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -636,
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
        
        -- Function to check if unit has an interruptible cast
        local function hasInterruptibleCast(unit)
            -- Skip if unit is invalid
            if not UnitExists(unit) or 
            not UnitCanAttack("player", unit) or 
            UnitIsDeadOrGhost(unit) or
            UnitIsTapDenied(unit) then
                return false
            end
            
            -- Skip if unit has skull mark
            local currentMark = GetRaidTargetIndex(unit)
            if currentMark == 8 then
                return false
            end
            
            -- Check for interruptible cast
            local name, _, _, startTime, endTime, _, _, notInterruptible = UnitCastingInfo(unit)
            -- Also check channeled spells
            if not name then
                name, _, _, startTime, endTime, _, notInterruptible = UnitChannelInfo(unit)
            end
            
            -- Return true if casting and can be interrupted
            return name and not notInterruptible, (endTime or 0) - (startTime or 0)
        end
        
        -- Track best candidate for new mark
        local bestTarget = nil
        local longestCastTime = 0
        
        -- Single pass through all units
        for _, unit in ipairs(units) do
            -- Check if this unit already has diamond and is still valid
            if GetRaidTargetIndex(unit) == 3 then
                local isInterruptible = hasInterruptibleCast(unit)
                if isInterruptible then
                    -- Current diamond unit is still valid - keep it and exit early
                    allstates[""] = {
                        show = true,
                        changed = true
                    }
                    return true
                else
                    -- Diamond-marked unit is no longer valid, clear mark
                    SetRaidTarget(unit, 0)
                end
            else
                -- Check if this is a potential new diamond target
                local isInterruptible, castDuration = hasInterruptibleCast(unit)
                if isInterruptible then
                    -- Prioritize targets with longer remaining cast time
                    if castDuration > longestCastTime then
                        bestTarget = unit
                        longestCastTime = castDuration
                    end
                end
            end
        end
        
        -- If we got here, no existing diamond was valid
        -- Mark best candidate with diamond if found
        if bestTarget then
            SetRaidTarget(bestTarget, 3)
            allstates[""] = {
                show = true,
                changed = true
            }
            return true
        end
        
        -- No interruptible cast found
        allstates[""] = {
            show = false,
            changed = true
        }
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
