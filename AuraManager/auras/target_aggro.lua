
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["target_aggro"] = {
    id = "Target Aggro",
    uid = "nDm(m3oP2SZ",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 168,
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
                customVariables = "{}",
                type = "custom",
                subeventSuffix = "_CAST_START",
                event = "Conditions",
                subeventPrefix = "SPELL",
                use_unit = true,
                custom = [[function(allstates)
    if not UnitAffectingCombat("player") then
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = false
        allstates[""].changed = true
        
        return true
    end
    
    local unit = "target"
    
    local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation("player", unit)
    local unitAffectingCombat = UnitAffectingCombat(unit)
    
    if isTanking or not unitAffectingCombat then
        allstates[""] = allstates[""] or {show = true}
        allstates[""].show = true
        allstates[""].changed = true
    else
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = false
        allstates[""].changed = true
    end
    
    return true
end]],
                spellIds = {},
                custom_type = "stateupdate",
                check = "update",
                unit = "target",
                names = {},
                debuffType = "HELPFUL",
                use_inverse = false,
                genericShowOn = "showOnCooldown",
                realSpellName = "Wrath",
                use_spellName = true,
                use_genericShowOn = true,
                use_track = true,
                spellName = 5176,
                itemName = 0,
                use_itemName = true,
                use_messageType = false,
                use_message = false,
                instance_size = {},
                use_moveSpeed = false,
                use_targetRequired = false,
                use_ismoving = true,
                use_sourceName = false,
                use_spec = true,
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
            multi = {},
        },
        use_never = false,
        spec = {
            multi = {},
        },
        size = {
            multi = {},
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
