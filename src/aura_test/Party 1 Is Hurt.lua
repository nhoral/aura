["Party 1 Is Hurt"] = {
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["color"] = {
    0.96470588235294,
    0.89803921568627,
    0.91764705882353,
    1,
    },
    ["adjustedMax"] = "",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["frameStrata"] = 1,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
    {
    ["trigger"] = {
    ["debuffType"] = "HELPFUL",
    ["type"] = "custom",
    ["subeventSuffix"] = "_CAST_START",
    ["custom_type"] = "stateupdate",
    ["use_unit"] = true,
    ["duration"] = "1",
    ["event"] = "Health",
    ["names"] = {
    },
    ["unevent"] = "auto",
    ["subeventPrefix"] = "SPELL",
    ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
    ["spellIds"] = {
    },
    ["check"] = "update",
    ["unit"] = "player",
    ["custom_hide"] = "timed",
    ["customVariables"] = "{}",
    },
    ["untrigger"] = {
    ["custom"] = "function()\n    return not aura_env.isTriggered\nend",
    },
    },
    ["disjunctive"] = "all",
    ["activeTriggerMode"] = 1,
    },
    ["xOffset"] = 585.0381399972098,
    ["useTooltip"] = true,
    ["keepAspectRatio"] = false,
    ["selfPoint"] = "BOTTOM",
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["yOffset"] = -150.5899938964844,
    ["desaturate"] = false,
    ["uid"] = "xdNc3aDcOfl",
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
    ["spec"] = {
    ["multi"] = {
    },
    },
    ["use_spellknown"] = false,
    ["zoneIds"] = "",
    ["class"] = {
    ["single"] = "WARLOCK",
    ["multi"] = {
    ["WARLOCK"] = true,
    },
    },
    ["use_level"] = false,
    ["level"] = {
    "120",
    },
    ["level_operator"] = {
    "~=",
    },
    ["size"] = {
    ["multi"] = {
    },
    },
    },
    ["automaticWidth"] = "Auto",
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["actions"] = {
    ["start"] = {
    },
    ["finish"] = {
    },
    ["init"] = {
    },
    },
    ["shadowXOffset"] = 1,
    ["displayText"] = "%c",
    ["internalVersion"] = 78,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["progressSource"] = {
    -1,
    "",
    },
    ["wordWrap"] = "WordWrap",
    ["parent"] = "Power, Health and Enemy Details",
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["animation"] = {
    ["start"] = {
    ["easeStrength"] = 3,
    ["type"] = "none",
    ["duration_type"] = "seconds",
    ["easeType"] = "none",
    },
    ["main"] = {
    ["type"] = "none",
    ["easeType"] = "none",
    ["easeStrength"] = 3,
    ["duration_type"] = "seconds",
    ["preset"] = "alphaPulse",
    },
    ["finish"] = {
    ["easeStrength"] = 3,
    ["type"] = "none",
    ["duration_type"] = "seconds",
    ["easeType"] = "none",
    },
    },
    ["cooldown"] = false,
    ["conditions"] = {
    },
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Party 1 Is Hurt",
    ["useCooldownModRate"] = true,
    ["alpha"] = 1,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["config"] = {
    },
    ["inverse"] = false,
    ["justify"] = "RIGHT",
    ["shadowColor"] = {
    0,
    0,
    0,
    1,
    },
    ["fixedWidth"] = 200,
    ["information"] = {
    ["forceEvents"] = true,
    ["ignoreOptionsEventErrors"] = true,
    },
    ["displayIcon"] = 135954,
    }