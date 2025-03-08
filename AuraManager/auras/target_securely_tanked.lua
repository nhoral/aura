
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_securely_tanked"] = {
    id = "Target Securely Tanked",
    uid = "laPpGB)1TRz",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = -656,
    yOffset = -339,
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
                custom = [[function(allstates)
    -- Throttle updates for performance
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        
        -- Function to check if a pet is securely tanking
        local function isPetSecurelyTanking(unit)
            -- Check player's pet
            if UnitExists("pet") then
                local isTanking, status, threatpct = UnitDetailedThreatSituation("pet", unit)
                if isTanking and status == 3 then
                    return true
                end
            end
            
            -- Check party pets
            for i = 1, 4 do
                local partyPet = "partypet" .. i
                if UnitExists(partyPet) then
                    local isTanking, status, threatpct = UnitDetailedThreatSituation(partyPet, unit)
                    if isTanking and status == 3 then
                        return true
                    end
                end
            end
            
            return false
        end
        
        -- Check if target exists and is being tanked by a pet
        if UnitExists("target") and isPetSecurelyTanking("target") then
            allstates[""] = allstates[""] or {show = true}
            allstates[""].show = true
            allstates[""].changed = true
        else
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
        end
        
        return true
    end
end]],
                check = "update",
                custom_type = "stateupdate",
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
