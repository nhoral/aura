
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_any_aggro"] = {
    id = "Player Any Aggro",
    uid = "j)4YY(dBqo4",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 132,
    yOffset = 80,
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
        activeTriggerMode = 1,
        disjunctive = "all",
        {
            trigger = {
                type = "custom",
                subeventSuffix = "_CAST_START",
                debuffType = "HELPFUL",
                event = "Swing Timer",
                names = {},
                unit = "player",
                spellIds = {},
                subeventPrefix = "SPELL",
                use_inverse = false,
                duration = "1",
                use_unit = true,
                custom_type = "stateupdate",
                unevent = "auto",
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        
        -- Function to check if unit is targeting player
        local function checkUnitTargetingPlayer(unit)
            if UnitExists(unit) and UnitCanAttack("player", unit) and not UnitIsDeadOrGhost(unit) then
                -- Check if unit is targeting player
                if UnitIsUnit("player", unit.."target") then
                    return true
                end
            end
            return false
        end
        
        -- Check nameplates (max 20)
        for i = 1, 20 do
            if checkUnitTargetingPlayer("nameplate" .. i) then
                allstates[""] = allstates[""] or {show = true}
                allstates[""].show = true
                allstates[""].changed = true
                return true
            end
        end
        
        -- Check direct targets
        if checkUnitTargetingPlayer("target") then
            allstates[""] = allstates[""] or {show = true}
            allstates[""].show = true
            allstates[""].changed = true
            return true
        end
        
        -- Check party members' targets
        for i = 1, 4 do
            if checkUnitTargetingPlayer("party" .. i .. "target") then
                allstates[""] = allstates[""] or {show = true}
                allstates[""].show = true
                allstates[""].changed = true
                return true
            end
        end
        
        -- No units targeting player, hide aura
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = false
        allstates[""].changed = true
    end
    
    return true
end]],
                events = "START_AUTOREPEAT_SPELL, STOP_AUTOREPEAT_SPELL, UNIT_SPELLCAST_START, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_DELAYED, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED, COMBAT_LOG_EVENT_UNFILTERED",
                check = "update",
                custom_hide = "timed",
                customVariables = "{}",
                use_hand = true,
                hand = "ranged",
                remaining_operator = "<",
                use_remaining = true,
                remaining = "0.2",
            },
            untrigger = {
                custom = [[function()
    return not aura_env.isTriggered
end]],
            },
        },
    },
    conditions = {},
    load = {
        talent = {
            multi = {},
        },
        class = {
            multi = {
                WARLOCK = true,
            },
            single = "WARLOCK",
        },
        spec = {
            multi = {},
        },
        size = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        use_level = false,
        level_operator = {
            "~=",
        },
        level = {
            "120",
        },
        use_spellknown = false,
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
