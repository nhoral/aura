
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["scanner_mk._2"] = {
    id = "Scanner Mk. 2",
    uid = "udV)olhWRPM",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 188,
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
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
                unevent = "auto",
                custom = [[function(allstates)
    -- Initialize aura environment variables if not exists
    aura_env.last = aura_env.last or 0
    aura_env.marks = aura_env.marks or {}
    aura_env.castEndTimes = aura_env.castEndTimes or {}
    aura_env.skullGUID = aura_env.skullGUID or nil
    aura_env.skullTimestamp = aura_env.skullTimestamp or GetTime()
    aura_env.seenTargets = aura_env.seenTargets or {}
    -- Constants
    local MARKS = {8, 7, 2, 6, 4, 1, 5}  -- Skull, Cross, Circle, Square, Moon, Star, Triangle
    local DIAMOND = 3  -- Reserved for interruptible casts
    -- Initialize spell categories if not exists
    if not aura_env.SPELL_CATEGORIES then
        aura_env.SPELL_CATEGORIES = {
            HEALING_SPELLS = {
                [2050] = true, [2052] = true, [2053] = true,  -- Lesser Heal Series
                [2054] = true, [2055] = true, [6063] = true, [6064] = true,  -- Heal Series
                [2060] = true, [10963] = true,  -- Greater Heal Series
            },
            CC_SPELLS = {
                [118] = true, [12824] = true, [12825] = true,  -- Polymorph Series
                [9484] = true, [9485] = true,  -- Shackle Undead Series
            },
            DAMAGE_SPELLS = {
                [686] = true, [695] = true, [705] = true,  -- Shadowbolt Series
                [421] = true, [930] = true,  -- Chain Lightning Series
            }
        }
    end
    -- Spell priority definitions
    local SPELL_PRIORITY = {
        HEALING_SPELLS = 4,  -- Highest priority
        CC_SPELLS = 3,
        DAMAGE_SPELLS = 2,
        UNCATEGORIZED = 1    -- Lowest priority
    }
    -- Performance throttling (0.2s)
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        local currentTime = GetTime()
        -- Check if player can mark (including solo players)
        if IsInGroup() and not (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player")) then
            return false
        end
        -- Tracking tables
        local currentEnemies = {}
        local markedEnemies = {}
        local unmarkedEnemies = {}
        local castingEnemies = {}
        local castingUnits = {}
        -- Helper Functions
        local function IsRogueCCd(unit)
            local ROGUE_CC = {"Sap", "Blind", "Gouge"}
            for _, ccType in ipairs(ROGUE_CC) do
                if AuraUtil.FindAuraByName(ccType, unit, "HARMFUL") then
                    return true
                end
            end
            return false
        end
        local function getSpellPriority(unit)
            local spellName, _, _, _, endTime, _, _, notInterruptible = UnitCastingInfo(unit)
            local isChanneling = false
            if not spellName then
                spellName, _, _, _, endTime, _, notInterruptible = UnitChannelInfo(unit)
                isChanneling = spellName ~= nil
            end
            if not spellName or notInterruptible then return 0, nil, nil end
            if not CheckInteractDistance(unit, 3) then return 0, nil, nil end
            local spellID = select(7, GetSpellInfo(spellName))
            if not spellID then return SPELL_PRIORITY.UNCATEGORIZED, spellName, endTime/1000 end
            if aura_env.SPELL_CATEGORIES.HEALING_SPELLS[spellID] then
                return SPELL_PRIORITY.HEALING_SPELLS, spellName, endTime/1000
            elseif aura_env.SPELL_CATEGORIES.CC_SPELLS[spellID] then
                return SPELL_PRIORITY.CC_SPELLS, spellName, endTime/1000
            elseif aura_env.SPELL_CATEGORIES.DAMAGE_SPELLS[spellID] then
                return SPELL_PRIORITY.DAMAGE_SPELLS, spellName, endTime/1000
            end
            return SPELL_PRIORITY.UNCATEGORIZED, spellName, endTime/1000
        end
        local function PromoteMarks(markedEnemies, MARKS)
            for i, highMark in ipairs(MARKS) do
                if not markedEnemies[highMark] then
                    -- Look for lower priority marks to promote
                    for j = i + 1, #MARKS do
                        local lowerMark = MARKS[j]
                        if markedEnemies[lowerMark] then
                            local target = markedEnemies[lowerMark]
                            SetRaidTarget(target.unit, highMark)
                            markedEnemies[highMark] = target
                            markedEnemies[lowerMark] = nil
                            aura_env.marks[target.guid] = highMark
                            break
                        end
                    end
                end
            end
        end
        -- SECTION 1: TARGET-BASED SKULL MARKING AND MAINTENANCE
        local targetGUID = UnitGUID("target")
        -- Record target if it's attackable
        if targetGUID and UnitCanAttack("player", "target") then
            if aura_env.seenTargets[targetGUID] then
                -- We've seen this target before, prioritize it for skull
                if not aura_env.skullGUID and not GetRaidTargetIndex("target") then
                    SetRaidTarget("target", 8)  -- Set skull (8)
                    aura_env.skullGUID = targetGUID
                    aura_env.marks[targetGUID] = 8
                    aura_env.skullTimestamp = currentTime
                end
            else
                -- First time seeing this target
                aura_env.seenTargets[targetGUID] = currentTime
            end
        end
        -- Clean up old seen targets (after 5 seconds)
        for guid, timestamp in pairs(aura_env.seenTargets) do
            if currentTime - timestamp > 5 then
                aura_env.seenTargets[guid] = nil
            end
        end
        -- Clear skull GUID if timeout exceeded (30 seconds)
        if aura_env.skullGUID and (currentTime - aura_env.skullTimestamp > 30) then
            local oldGUID = aura_env.skullGUID
            aura_env.skullGUID = nil
            aura_env.marks[oldGUID] = nil
        end
        -- Clear skull GUID if current target is dead or doesn't exist
        if aura_env.skullGUID and targetGUID == aura_env.skullGUID then
            if not UnitExists("target") or UnitIsDeadOrGhost("target") then
                local oldGUID = aura_env.skullGUID
                aura_env.skullGUID = nil
                aura_env.marks[oldGUID] = nil
            else
                aura_env.skullTimestamp = currentTime
            end
        end
        -- Clean up expired casts
        for guid, endTime in pairs(aura_env.castEndTimes) do
            if currentTime > endTime then
                aura_env.castEndTimes[guid] = nil
            end
        end
        -- SECTION 2: NAMEPLATE SCANNING AND PROCESSING
        for i = 1, 40 do
            local unit = "nameplate"..i
            if UnitExists(unit) and UnitCanAttack("player", unit) and UnitAffectingCombat(unit) then
                local guid = UnitGUID(unit)
                if guid then
                    local currentMark = GetRaidTargetIndex(unit)
                    currentEnemies[guid] = unit
                    -- Get spell priority and info
                    local priority, spellName, endTime = getSpellPriority(unit)
                    if priority > 0 then
                        castingUnits[guid] = {
                            unit = unit,
                            guid = guid,
                            priority = priority,
                            spellName = spellName,
                            endTime = endTime,
                            distance = CheckInteractDistance(unit, 3) and 1 or 2,
                            currentMark = currentMark
                        }
                        castingEnemies[guid] = true
                        aura_env.castEndTimes[guid] = endTime
                    elseif IsRogueCCd(unit) then
                        if currentMark then
                            SetRaidTarget(unit, 0)
                            for mark, data in pairs(markedEnemies) do
                                if data.guid == guid then
                                    markedEnemies[mark] = nil
                                    break
                                end
                            end
                        end
                    elseif currentMark then
                        markedEnemies[currentMark] = {guid = guid, unit = unit}
                    else
                        table.insert(unmarkedEnemies, {guid = guid, unit = unit})
                    end
                end
            end
        end
        -- SECTION 3: DIAMOND MARK MANAGEMENT
        local selectedUnit = nil
        local highestPriority = 0
        local closestDistance = 3
        for guid, data in pairs(castingUnits) do
            if data.priority > highestPriority or
            (data.priority == highestPriority and data.distance < closestDistance) then
                highestPriority = data.priority
                closestDistance = data.distance
                selectedUnit = data
            end
        end
        if selectedUnit then
            if selectedUnit.currentMark ~= DIAMOND then
                SetRaidTarget(selectedUnit.unit, DIAMOND)
            end
            markedEnemies[DIAMOND] = {guid = selectedUnit.guid, unit = selectedUnit.unit}
            -- Remove diamond from other casting units
            for guid, data in pairs(castingUnits) do
                if data.unit ~= selectedUnit.unit and data.currentMark == DIAMOND then
                    SetRaidTarget(data.unit, 0)
                    table.insert(unmarkedEnemies, {guid = guid, unit = data.unit})
                end
            end
        end
        -- SECTION 4: MARK PROMOTION AND FILLING
        -- First promote existing marks if needed
        PromoteMarks(markedEnemies, MARKS)
        -- Then fill remaining empty marks with unmarked enemies
        for _, mark in ipairs(MARKS) do
            if not markedEnemies[mark] and #unmarkedEnemies > 0 then
                local target = table.remove(unmarkedEnemies, 1)
                if not castingEnemies[target.guid] then
                    SetRaidTarget(target.unit, mark)
                    aura_env.marks[target.guid] = mark
                end
            end
        end
        -- Update state for visualization
        allstates[""] = {
            changed = true,
            show = true,
            activeMarks = aura_env.marks,
            skullGUID = aura_env.skullGUID
        }
        return true
    end
    return false
end]],
                events = "PLAYER_TARGET_CHANGED UNIT_TARGET NAME_PLATE_UNIT_ADDED NAME_PLATE_UNIT_REMOVED",
                check = "update",
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
        group_leader = {
            multi = {
                LEADER = true,
            },
            single = "LEADER",
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
