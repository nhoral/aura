["Target Is Moving"] = {
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["authorOptions"] = {
    },
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
    {
    ["trigger"] = {
    ["customVariables"] = "{}",
    ["type"] = "custom",
    ["custom_hide"] = "timed",
    ["custom_type"] = "stateupdate",
    ["names"] = {
    },
    ["duration"] = "1",
    ["event"] = "Health",
    ["unit"] = "player",
    ["unevent"] = "auto",
    ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
    ["spellIds"] = {
    },
    ["subeventPrefix"] = "SPELL",
    ["check"] = "update",
    ["use_unit"] = true,
    ["subeventSuffix"] = "_CAST_START",
    ["debuffType"] = "HELPFUL",
    },
    ["untrigger"] = {
    },
    },
    ["disjunctive"] = "all",
    ["activeTriggerMode"] = 1,
    },
    ["width"] = 30,
    ["internalVersion"] = 78,
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
    ["color"] = {
    0.96470588235294,
    0.89803921568627,
    0.91764705882353,
    1,
    },
    ["displayText"] = "%c",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["desaturate"] = false,
    ["yOffset"] = -150.6124938964844,
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
    {
    ["type"] = "subbackground",
    },
    },
    ["height"] = 30,
    ["xOffset"] = 645.0165893554688,
    ["load"] = {
    ["use_level"] = false,
    ["talent"] = {
    ["multi"] = {
    },
    },
    ["level_operator"] = {
    "~=",
    },
    ["size"] = {
    ["multi"] = {
    },
    },
    ["spec"] = {
    ["multi"] = {
    },
    },
    ["use_never"] = false,
    ["level"] = {
    "120",
    },
    ["class"] = {
    ["single"] = "WARLOCK",
    ["multi"] = {
    ["WARLOCK"] = true,
    },
    },
    ["zoneIds"] = "",
    },
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["actions"] = {
    ["start"] = {
    },
    ["init"] = {
    },
    ["finish"] = {
    },
    },
    ["shadowXOffset"] = 1,
    ["parent"] = "Power, Health and Enemy Details",
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "BOTTOM",
    ["adjustedMax"] = "",
    ["automaticWidth"] = "Auto",
    ["wordWrap"] = "WordWrap",
    ["information"] = {
    ["forceEvents"] = true,
    ["ignoreOptionsEventErrors"] = true,
    },
    ["conditions"] = {
    },
    ["config"] = {
    },
    ["useCooldownModRate"] = true,
    ["zoom"] = 0,
    ["justify"] = "RIGHT",
    ["tocversion"] = 11500,
    ["id"] = "Target Is Moving",
    ["frameStrata"] = 1,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["uid"] = "fYzi6AJVp9U",
    ["inverse"] = false,
    ["semver"] = "1.0.0",
    ["shadowColor"] = {
    0,
    0,
    0,
    1,
    },
    ["fixedWidth"] = 200,
    ["cooldown"] = false,
    ["displayIcon"] = 135788,
    }