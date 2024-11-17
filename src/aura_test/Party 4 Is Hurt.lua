["Party 4 Is Hurt"] = {
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["parent"] = "Power, Health and Enemy Details",
    ["adjustedMax"] = "",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["yOffset"] = -150.5692246657152,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["config"] = {
    },
    ["customTextUpdate"] = "update",
    ["automaticWidth"] = "Auto",
    ["actions"] = {
    ["start"] = {
    },
    ["init"] = {
    },
    ["finish"] = {
    },
    },
    ["triggers"] = {
    {
    ["trigger"] = {
    ["customVariables"] = "{}",
    ["type"] = "custom",
    ["custom_hide"] = "timed",
    ["custom_type"] = "stateupdate",
    ["use_unit"] = true,
    ["duration"] = "1",
    ["event"] = "Health",
    ["names"] = {
    },
    ["unevent"] = "auto",
    ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
    ["spellIds"] = {
    },
    ["subeventPrefix"] = "SPELL",
    ["check"] = "update",
    ["unit"] = "player",
    ["subeventSuffix"] = "_CAST_START",
    ["debuffType"] = "HELPFUL",
    },
    ["untrigger"] = {
    ["custom"] = "function()\n    return not aura_env.isTriggered\nend",
    },
    },
    ["disjunctive"] = "all",
    ["activeTriggerMode"] = 1,
    },
    ["color"] = {
    0.96470588235294,
    0.89803921568627,
    0.91764705882353,
    1,
    },
    ["internalVersion"] = 78,
    ["keepAspectRatio"] = false,
    ["wordWrap"] = "WordWrap",
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["shadowYOffset"] = -1,
    ["desaturate"] = false,
    ["xOffset"] = 495.3808750697547,
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
    {
    ["type"] = "subbackground",
    },
    },
    ["height"] = 30,
    ["authorOptions"] = {
    },
    ["load"] = {
    ["use_never"] = false,
    ["talent"] = {
    ["multi"] = {
    },
    },
    ["class"] = {
    ["single"] = "WARLOCK",
    ["multi"] = {
    ["WARLOCK"] = true,
    },
    },
    ["use_spellknown"] = false,
    ["size"] = {
    ["multi"] = {
    },
    },
    ["level_operator"] = {
    "~=",
    },
    ["use_level"] = false,
    ["level"] = {
    "120",
    },
    ["spec"] = {
    ["multi"] = {
    },
    },
    ["zoneIds"] = "",
    },
    ["cooldownEdge"] = false,
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["icon"] = true,
    ["shadowXOffset"] = 1,
    ["displayText"] = "%c",
    ["useTooltip"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["progressSource"] = {
    -1,
    "",
    },
    ["animation"] = {
    ["start"] = {
    ["type"] = "none",
    ["easeStrength"] = 3,
    ["duration_type"] = "seconds",
    ["easeType"] = "none",
    },
    ["main"] = {
    ["type"] = "none",
    ["easeType"] = "none",
    ["easeStrength"] = 3,
    ["preset"] = "alphaPulse",
    ["duration_type"] = "seconds",
    },
    ["finish"] = {
    ["type"] = "none",
    ["easeStrength"] = 3,
    ["duration_type"] = "seconds",
    ["easeType"] = "none",
    },
    },
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["selfPoint"] = "BOTTOM",
    ["information"] = {
    ["forceEvents"] = true,
    ["ignoreOptionsEventErrors"] = true,
    },
    ["fixedWidth"] = 200,
    ["width"] = 30,
    ["alpha"] = 1,
    ["cooldownTextDisabled"] = false,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Party 4 Is Hurt",
    ["zoom"] = 0,
    ["useCooldownModRate"] = true,
    ["anchorFrameType"] = "SCREEN",
    ["justify"] = "RIGHT",
    ["uid"] = "FhlmFnl7cvf",
    ["inverse"] = false,
    ["frameStrata"] = 1,
    ["shadowColor"] = {
    0,
    0,
    0,
    1,
    },
    ["displayIcon"] = 136220,
    ["cooldown"] = false,
    ["conditions"] = {
    },
    }