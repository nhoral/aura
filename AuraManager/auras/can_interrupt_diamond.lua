
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["can_interrupt_diamond"] = {
    id = "Can Interrupt Diamond",
    uid = "KdZ0)sgah6Y",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 176,
    yOffset = 100,
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
                use_absorbMode = true,
                customStacks = [[function() return aura_env.count end]],
                custom = [[function(allstates, event, ...)
    -- Throttle checks
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        
        -- Check all nameplates
        for i = 1, 40 do
            local unit = "nameplate"..i
            
            -- Check if unit exists and is attackable
            if UnitExists(unit) and UnitCanAttack("player", unit) then
                -- Check if unit has cross mark (7)
                local mark = GetRaidTargetIndex(unit)
                
                if mark == 3 then
                    local _, _, _, _, _, _, _, _, interrupt = UnitCastingInfo(unit)
                    
                    -- If not CC'd, show aura
                    if interrupt then
                        allstates[""] = {
                            show = true,
                            changed = true,
                            unit = unit
                        }
                        return true
                    end
                end
            end
        end
        
        -- No valid target found, hide aura
        allstates[""] = {
            show = false,
            changed = true
        }
        return true
    end
end]],
                unevent = "auto",
                check = "update",
                custom_type = "stateupdate",
                use_unit = true,
                customVariables = "",
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
