
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_any_aggro"] = {
    id = "Player Any Aggro",
    uid = "j)4YY(dBqo4",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -604,
    yOffset = -319,
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
                unevent = "auto",
                events = "START_AUTOREPEAT_SPELL, STOP_AUTOREPEAT_SPELL, UNIT_SPELLCAST_START, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_DELAYED, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED, COMBAT_LOG_EVENT_UNFILTERED",
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.lastUpdate or GetTime() - aura_env.lastUpdate > 0.2 then
        aura_env.lastUpdate = GetTime()
        
        -- Collection of units to check
        local units = {}
        
        -- Add nameplate units
        for i = 1, 40 do
            local unit = "nameplate"..i
            if UnitExists(unit) then
                table.insert(units, unit)
            end
        end
        
        -- Add other common target units
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
        
        -- Check each unit for targeting player
        for _, unit in ipairs(units) do
            -- Skip if unit is invalid or not attackable
            if UnitExists(unit) and UnitCanAttack("player", unit) then
                -- Check if this unit is targeting the player
                local unitTarget = unit.."target"
                if UnitExists(unitTarget) and UnitIsUnit(unitTarget, "player") then
                    allstates[""] = {
                        show = true,
                        changed = true,
                        progressType = "static",
                        autoHide = false
                    }
                    return true
                end
            end
        end
        
        -- No enemies found targeting player
        allstates[""] = {
            show = false,
            changed = true,
            progressType = "static",
            autoHide = false
        }
    end
    
    return true
end]],
                check = "update",
                custom_type = "stateupdate",
                custom_hide = "timed",
                customVariables = "{}",
                use_hand = true,
                hand = "ranged",
                use_remaining = true,
                remaining_operator = "<",
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
        level = {
            "120",
        },
        level_operator = {
            "~=",
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
