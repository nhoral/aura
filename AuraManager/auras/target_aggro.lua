
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_aggro"] = {
    id = "Target Aggro",
    uid = "nDm(m3oP2SZ",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 132,
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
                event = "Conditions",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "target",
                debuffType = "HELPFUL",
                use_genericShowOn = true,
                use_inverse = false,
                realSpellName = "Wrath",
                use_spellName = true,
                genericShowOn = "showOnCooldown",
                spellName = 5176,
                use_track = true,
                custom_type = "stateupdate",
                custom = [[function(allstates)
    -- Throttle the check for perf?  What is config?
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        -- Set the last time
        aura_env.last = GetTime()
        
        if not UnitAffectingCombat("player") then
            allstates[""] = allstates[""] or {show = false}
            allstates[""].show = false
            allstates[""].changed = true
            
            return true
        end
        
        if UnitAffectingCombat("target") and UnitIsUnit("targettarget", "player") then
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
                use_unit = true,
                customVariables = "{}",
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_moveSpeed = false,
                use_sourceName = false,
                use_targetRequired = false,
                use_ismoving = true,
                use_spec = true,
                use_message = false,
                instance_size = {},
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
            multi = {},
        },
        spec = {
            multi = {},
        },
        talent = {
            multi = {},
        },
        use_never = false,
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
