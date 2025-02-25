
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["pet_attacking_skull"] = {
    id = "Pet Attacking Skull",
    uid = "CjcHKQFnPwA",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 164,
    yOffset = 84,
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
                event = "Health",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                duration = "1",
                custom_hide = "timed",
                custom_type = "stateupdate",
                unevent = "auto",
                events = "UNIT_PET, PET_ATTACK_START PET_ATTACK_STOP RAID_TARGET_UPDATE",
                custom = [[function(allstates)
    -- Initialize state if needed
    aura_env.last = aura_env.last or 0
    
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        
        -- Check if pet exists and has a target
        local hasPet = UnitExists("pet")
        local petTarget = UnitExists("pettarget")
        local isPetAttacking = hasPet and petTarget and IsPetAttackActive()
        
        -- Check if pet's target is marked with cross (mark 7)
        local isTargetCross = false
        if isPetAttacking then
            local mark = GetRaidTargetIndex("pettarget")
            isTargetCross = (mark == 8)  -- 7 is cross
        end
        
        -- Update state
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = isTargetCross
        allstates[""].changed = true
        
        return true
    end
    return false
end]],
                check = "update",
                use_unit = true,
                customVariables = "{}",
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
        size = {
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
        talent = {
            multi = {},
        },
        use_never = false,
        zoneIds = "",
        level_operator = {
            "~=",
        },
        use_level = false,
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
