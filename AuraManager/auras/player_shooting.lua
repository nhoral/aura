
local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["player_shooting"] = {
    id = "Player Shooting",
    uid = "4P9BfbFABfk",
    internalVersion = 78,
    regionType = "aurabar",
    anchorPoint = "CENTER",
    selfPoint = "CENTER",
    xOffset = 180,
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
                event = "Swing Timer",
                names = {},
                spellIds = {},
                subeventPrefix = "SPELL",
                unit = "player",
                debuffType = "HELPFUL",
                use_inverse = false,
                duration = "1",
                custom_hide = "timed",
                events = "START_AUTOREPEAT_SPELL, STOP_AUTOREPEAT_SPELL, UNIT_SPELLCAST_START, UNIT_SPELLCAST_STOP, UNIT_SPELLCAST_SUCCEEDED, UNIT_SPELLCAST_DELAYED, UNIT_SPELLCAST_FAILED, UNIT_SPELLCAST_INTERRUPTED, COMBAT_LOG_EVENT_UNFILTERED",
                custom = [[function(allstates)
    -- Initialize state if needed
    aura_env.last = aura_env.last or 0
    aura_env.shooting = aura_env.shooting or false
    
    if not aura_env.last or GetTime() - aura_env.last > 0.2 then
        aura_env.last = GetTime()
        -- Check auto shot status
        local isAutoShotOn = IsAutoRepeatSpell(GetSpellInfo(75))  -- 75 is Auto Shot
        local hasRangedWeapon = IsEquippedItemType("Bow") or IsEquippedItemType("Gun") or IsEquippedItemType("Crossbow")
        -- Update shooting state
        aura_env.shooting = isAutoShotOn and hasRangedWeapon
        -- Update state display
        allstates[""] = allstates[""] or {show = false}
        allstates[""].show = aura_env.shooting
        allstates[""].changed = true
        return true
    end
    return false
end]],
                unevent = "auto",
                check = "update",
                custom_type = "stateupdate",
                use_unit = true,
                customVariables = "{}",
                use_hand = true,
                hand = "ranged",
                remaining_operator = "<",
                remaining = "0.2",
                use_remaining = true,
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
        level = {
            "120",
        },
        use_level = false,
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
