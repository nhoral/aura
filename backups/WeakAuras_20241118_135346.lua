
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["login_squelch_time"] = 10,
["features"] = {
},
["displays"] = {
["Combat"] = {
["iconSource"] = 0,
["xOffset"] = 585.1331909179687,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.6,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = false,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
["do_custom"] = false,
["hide_all_glows"] = false,
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "BOTH",
["useName"] = true,
["use_incombat"] = true,
["auranames"] = {
"Demon Skin",
},
["subeventSuffix"] = "_CAST_START",
["ownOnly"] = true,
["event"] = "Conditions",
["use_unit"] = true,
["unitExists"] = false,
["names"] = {
},
["spellIds"] = {
},
["type"] = "unit",
["unit"] = "player",
["matchesShowOn"] = "showOnActive",
["subeventPrefix"] = "SPELL",
["useRem"] = false,
},
["untrigger"] = {
},
},
{
["activeTriggerMode"] = -10,
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
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
["class"] = {
["single"] = "DRUID",
["multi"] = {
["DRUID"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["cooldownTextDisabled"] = true,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["displayIcon"] = 134396,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["icon"] = true,
["information"] = {
},
["zoom"] = 0,
["useCooldownModRate"] = true,
["parent"] = "Power, Health and Enemy Details",
["id"] = "Combat",
["config"] = {
},
["alpha"] = 1,
["width"] = 30,
["useTooltip"] = false,
["uid"] = "CrtyJoBAnr7",
["inverse"] = false,
["selfPoint"] = "CENTER",
["conditions"] = {
},
["cooldown"] = false,
["color"] = {
1,
1,
1,
1,
},
},
["Enemy In Melee Range"] = {
["iconSource"] = -1,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.633331044515,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
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
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Range Check",
["use_unit"] = true,
["range"] = "5",
["unit"] = "target",
["spellIds"] = {
},
["use_range"] = true,
["names"] = {
},
["subeventPrefix"] = "SPELL",
["range_operator"] = "<=",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["authorOptions"] = {
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = true,
["displayIcon"] = 135615,
["selfPoint"] = "CENTER",
["xOffset"] = 495.4265893554689,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Enemy In Melee Range",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "ZS(VGt32dqK",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 0,
},
["changes"] = {
{
["property"] = "alpha",
},
},
},
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 1,
},
["changes"] = {
{
["value"] = 1,
["property"] = "alpha",
},
},
},
},
["information"] = {
},
["icon"] = true,
},
["Health Below 50"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.600015258789,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["use_showCost"] = true,
["use_power"] = false,
["event"] = "Health",
["use_percentpower"] = false,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
["unit"] = "player",
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
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
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "8gq)711zPo6",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["icon"] = false,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["value"] = "50",
["op"] = ">",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["color"] = {
1,
1,
1,
1,
},
["xOffset"] = 645.0333129882813,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 50",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = 135930,
["cooldown"] = false,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Party 2 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["yOffset"] = -150.5818120783026,
["anchorPoint"] = "CENTER",
["wordWrap"] = "WordWrap",
["cooldownSwipe"] = true,
["useCooldownModRate"] = true,
["customTextUpdate"] = "update",
["url"] = "https://wago.io/xPU0qj4Ap/1",
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
["subeventSuffix"] = "_CAST_START",
["names"] = {
},
["duration"] = "1",
["event"] = "Health",
["unit"] = "player",
["unevent"] = "auto",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 3) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party2\"),UnitHealthMax(\"party2\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party2\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
["subeventPrefix"] = "SPELL",
["check"] = "update",
["use_unit"] = true,
["custom_type"] = "stateupdate",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
["custom"] = "function()\n    return not aura_env.isTriggered\nend",
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = 1,
},
["authorOptions"] = {
},
["internalVersion"] = 78,
["keepAspectRatio"] = false,
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
["adjustedMax"] = "",
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["desaturate"] = false,
["cooldownEdge"] = false,
["font"] = "聊天",
["version"] = 1,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_text_format_p_time_precision"] = 1,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["text_text_format_p_time_legacy_floor"] = false,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["anchorYOffset"] = 0,
["type"] = "subtext",
["text_text_format_p_time_dynamic_threshold"] = 60,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowXOffset"] = 0,
["text_shadowYOffset"] = 0,
["text_text_format_p_time_mod_rate"] = true,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["text_anchorPoint"] = "CENTER",
["text_text_format_p_time_format"] = 0,
["text_visible"] = true,
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_text_format_p_format"] = "timed",
},
},
["height"] = 30,
["automaticWidth"] = "Auto",
["load"] = {
["use_level"] = false,
["talent"] = {
["multi"] = {
},
},
["level_operator"] = {
"~=",
},
["use_spellknown"] = false,
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
["icon"] = true,
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["shadowXOffset"] = 1,
["useTooltip"] = true,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "BOTTOM",
["fixedWidth"] = 200,
["preferToUpdate"] = false,
["xOffset"] = 555.1951607840401,
["config"] = {
},
["width"] = 30,
["frameStrata"] = 1,
["zoom"] = 0,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 2 Is Hurt",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["justify"] = "RIGHT",
["uid"] = "jNOmkEXpWC1",
["inverse"] = false,
["displayIcon"] = 134153,
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["cooldown"] = false,
["parent"] = "Power, Health and Enemy Details",
},
["Power 10"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.4999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["use_power"] = false,
["use_showCost"] = false,
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_percentpower"] = false,
["event"] = "Power",
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "uzuzZJ6U79G",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "10",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["color"] = {
1,
1,
1,
1,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 10",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["xOffset"] = 644.9333129882812,
["displayIcon"] = "135913",
["cooldown"] = false,
["icon"] = false,
},
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
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
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
["cooldownSwipe"] = true,
["alpha"] = 1,
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
["unit"] = "player",
["duration"] = "1",
["event"] = "Health",
["use_unit"] = true,
["unevent"] = "auto",
["subeventPrefix"] = "SPELL",
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
["spellIds"] = {
},
["check"] = "update",
["names"] = {
},
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
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -150.5899938964844,
["desaturate"] = false,
["parent"] = "Power, Health and Enemy Details",
["font"] = "聊天",
["version"] = 1,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["url"] = "https://wago.io/xPU0qj4Ap/1",
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
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["cooldown"] = false,
["shadowXOffset"] = 1,
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["wordWrap"] = "WordWrap",
["conditions"] = {
},
["preferToUpdate"] = false,
["automaticWidth"] = "Auto",
["uid"] = "xdNc3aDcOfl",
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["zoom"] = 0,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 1 Is Hurt",
["fixedWidth"] = 200,
["useCooldownModRate"] = true,
["width"] = 30,
["justify"] = "RIGHT",
["config"] = {
},
["inverse"] = false,
["cooldownTextDisabled"] = false,
["shadowColor"] = {
0,
0,
0,
1,
},
["displayIcon"] = 135954,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["authorOptions"] = {
},
},
["Target Is Moving"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["parent"] = "Power, Health and Enemy Details",
["preferToUpdate"] = false,
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["customTextUpdate"] = "update",
["url"] = "https://wago.io/xPU0qj4Ap/1",
["icon"] = true,
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["check"] = "update",
["unit"] = "player",
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = 1,
},
["authorOptions"] = {
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["wordWrap"] = "WordWrap",
["xOffset"] = 645.0165893554688,
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
["zoom"] = 0,
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
["automaticWidth"] = "Auto",
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
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "BOTTOM",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["conditions"] = {
},
["cooldownEdge"] = false,
["config"] = {
},
["adjustedMax"] = "",
["width"] = 30,
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Target Is Moving",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["semver"] = "1.0.0",
["uid"] = "fYzi6AJVp9U",
["inverse"] = false,
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
["shadowColor"] = {
0,
0,
0,
1,
},
["displayIcon"] = 135788,
["cooldown"] = false,
["fixedWidth"] = 200,
},
["Power, Health and Enemy Details"] = {
["controlledChildren"] = {
"Power 5",
"Power 10",
"Power 15",
"Power 20",
"Power 30",
"Power 40",
"Power 50",
"Power 60",
"Power 70",
"Power 80",
"Power 90",
"Power 100",
"Target Health Below 75",
"Target Health Below 50",
"Target Health Below 20",
"Health Below 75",
"Health Below 50",
"Health Below 20",
"Combat",
"Enemy Casting",
"Undead or Mechanical",
"Enemy In Melee Range",
"Enemy Range 20",
"Target Is Moving",
"Player is moving",
"Target Aggro",
"Enemy Loose",
"Casting",
"Party 1 Is Hurt",
"Party 2 Is Hurt",
"Party 3 Is Hurt",
"Party 4 Is Hurt",
},
["borderBackdrop"] = "Blizzard Tooltip",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["yOffset"] = -1.000030517578125,
["anchorPoint"] = "CENTER",
["borderColor"] = {
0,
0,
0,
1,
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["event"] = "Health",
["subeventPrefix"] = "SPELL",
},
["untrigger"] = {
},
},
},
["internalVersion"] = 78,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["subRegions"] = {
},
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["backdropColor"] = {
1,
1,
1,
0.5,
},
["scale"] = 1,
["border"] = false,
["borderEdge"] = "Square Full White",
["regionType"] = "group",
["borderSize"] = 2,
["borderOffset"] = 4,
["tocversion"] = 11500,
["id"] = "Power, Health and Enemy Details",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["borderInset"] = 1,
["xOffset"] = -273.8443603515625,
["config"] = {
},
["conditions"] = {
},
["information"] = {
},
["uid"] = "oyd4JDRwNo9",
},
["Target Health Below 20"] = {
["iconSource"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.5000305175781,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["use_power"] = false,
["use_showCost"] = true,
["unit"] = "target",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_percentpower"] = false,
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = ")u5IFAi1R()",
["keepAspectRatio"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["value"] = "20",
["op"] = ">",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Target Health Below 20",
["alpha"] = 1,
["useCooldownModRate"] = true,
["width"] = 30,
["xOffset"] = 495.5333129882813,
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
["displayIcon"] = 132111,
["cooldown"] = false,
["parent"] = "Power, Health and Enemy Details",
},
["Party 3 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["displayIcon"] = 136172,
["cooldownSwipe"] = true,
["alpha"] = 1,
["customTextUpdate"] = "update",
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["debuffType"] = "HELPFUL",
["type"] = "custom",
["custom_type"] = "stateupdate",
["subeventSuffix"] = "_CAST_START",
["use_unit"] = true,
["duration"] = "1",
["event"] = "Health",
["names"] = {
},
["unevent"] = "auto",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["parent"] = "Power, Health and Enemy Details",
["useTooltip"] = true,
["keepAspectRatio"] = false,
["selfPoint"] = "BOTTOM",
["displayText"] = "%c",
["adjustedMin"] = "",
["yOffset"] = -150.5749938964844,
["desaturate"] = false,
["xOffset"] = 525.3809971400667,
["font"] = "聊天",
["version"] = 1,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["automaticWidth"] = "Auto",
["load"] = {
["use_level"] = false,
["talent"] = {
["multi"] = {
},
},
["level_operator"] = {
"~=",
},
["use_spellknown"] = false,
["zoneIds"] = "",
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
["size"] = {
["multi"] = {
},
},
},
["icon"] = true,
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["cooldown"] = false,
["shadowXOffset"] = 1,
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["wordWrap"] = "WordWrap",
["conditions"] = {
},
["url"] = "https://wago.io/xPU0qj4Ap/1",
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
["uid"] = "hCrU8TLTAb)",
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["zoom"] = 0,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 3 Is Hurt",
["justify"] = "RIGHT",
["frameStrata"] = 1,
["width"] = 30,
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
["config"] = {
},
["inverse"] = false,
["adjustedMax"] = "",
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
["cooldownTextDisabled"] = false,
},
["Power 90"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.5,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["use_unit"] = true,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "J6J8wagxkea",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["icon"] = false,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "90",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["xOffset"] = 615.0334350585938,
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 90",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = "136159",
["cooldown"] = false,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Power 20"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.4,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["use_unit"] = true,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "eFdY33D7mdY",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "20",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["color"] = {
1,
1,
1,
1,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 20",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["xOffset"] = 615.0333129882813,
["displayIcon"] = 136173,
["cooldown"] = false,
["icon"] = false,
},
["Power 5"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.6428510393415,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["use_power"] = false,
["event"] = "Power",
["use_percentpower"] = false,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
["use_showCost"] = false,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["ROGUE"] = true,
["WARRIOR"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 435.4665893554688,
["cooldown"] = false,
["displayIcon"] = 136070,
["selfPoint"] = "CENTER",
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 5",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["uid"] = "xAVZLAwDoZG",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "5",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["color"] = {
1,
1,
1,
1,
},
},
["Target Health Below 50"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.5,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["use_power"] = false,
["use_showCost"] = true,
["use_percentpower"] = false,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["unit"] = "target",
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = 136021,
["authorOptions"] = {
},
["xOffset"] = 525.4333129882812,
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Target Health Below 50",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "l3whyg3X7Hn",
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["op"] = ">",
["value"] = "50",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
},
["Enemy Loose"] = {
["iconSource"] = 0,
["wagoID"] = "ubUm8LJEP",
["color"] = {
0.9921569228172302,
1,
0.988235354423523,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -135.5600015258789,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["customTextUpdate"] = "update",
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["duration"] = "1",
["names"] = {
},
["debuffType"] = "HELPFUL",
["type"] = "custom",
["unevent"] = "auto",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["event"] = "Health",
["customStacks"] = "function() return aura_env.count end\n",
["custom_type"] = "stateupdate",
["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
["spellIds"] = {
},
["use_unit"] = true,
["check"] = "update",
["use_absorbMode"] = true,
["subeventPrefix"] = "SPELL",
["customVariables"] = "{\n  stacks = true,\n}",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["zoom"] = 0,
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["useCooldownModRate"] = true,
["authorOptions"] = {
},
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
["custom"] = "",
["do_custom"] = false,
},
},
["stickyDuration"] = false,
["rotation"] = 0,
["cooldown"] = false,
["version"] = 8,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_fontType"] = "OUTLINE",
["text_anchorPoint"] = "CENTER",
["text_fontSize"] = 24,
["anchorXOffset"] = 0,
["text_visible"] = true,
},
},
["height"] = 30,
["rotate"] = false,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
},
},
["zoneIds"] = "",
},
["conditions"] = {
},
["useAdjustededMax"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["parent"] = "Power, Health and Enemy Details",
["keepAspectRatio"] = false,
["config"] = {
},
["mirror"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 435.5000447591146,
["blendMode"] = "BLEND",
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Squirrel",
["auto"] = true,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.7",
["tocversion"] = 11500,
["id"] = "Enemy Loose",
["preferToUpdate"] = false,
["frameStrata"] = 1,
["width"] = 30,
["desaturate"] = false,
["uid"] = "EeOYElnJOLf",
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 134140,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["url"] = "",
},
["Casting"] = {
["iconSource"] = 0,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -135.5642719813756,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Cast",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["use_unit"] = true,
["unit"] = "player",
["names"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["keepAspectRatio"] = false,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
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
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["uid"] = "VYXlh1iMyFX",
["parent"] = "Power, Health and Enemy Details",
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["progressSource"] = {
-1,
"",
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 1,
},
["changes"] = {
{
["property"] = "color",
},
},
},
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 0,
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["xOffset"] = 466.1777709960936,
["authorOptions"] = {
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Casting",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
["displayIcon"] = 136099,
["cooldown"] = false,
["icon"] = true,
},
["Example Enemy Loose"] = {
["sparkWidth"] = 10,
["sparkOffsetX"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = 0,
["anchorPoint"] = "CENTER",
["sparkRotation"] = 0,
["sparkRotationMode"] = "AUTO",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
["unit"] = "player",
["check"] = "update",
["names"] = {
},
["custom_type"] = "stateupdate",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["icon_color"] = {
1,
1,
1,
1,
},
["enableGradient"] = false,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["barColor"] = {
0,
0,
1,
1,
},
["desaturate"] = false,
["sparkOffsetY"] = 0,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["type"] = "subforeground",
},
},
["gradientOrientation"] = "HORIZONTAL",
["textureSource"] = "LSM",
["load"] = {
["talent"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["sparkBlendMode"] = "ADD",
["useAdjustededMax"] = false,
["id"] = "Example Enemy Loose",
["xOffset"] = 0,
["information"] = {
},
["iconSource"] = -1,
["icon"] = false,
["useAdjustededMin"] = false,
["regionType"] = "aurabar",
["zoom"] = 0,
["internalVersion"] = 78,
["icon_side"] = "RIGHT",
["uid"] = "SVG8Pdt0q3b",
["sparkHeight"] = 30,
["texture"] = "Solid",
["width"] = 5,
["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
["spark"] = false,
["frameStrata"] = 1,
["sparkHidden"] = "NEVER",
["sparkColor"] = {
1,
1,
1,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["height"] = 5,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["orientation"] = "HORIZONTAL",
["conditions"] = {
},
["barColor2"] = {
0,
0,
1,
1,
},
["backgroundColor"] = {
0,
0,
1,
1,
},
},
["Power 50"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.3999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["use_unit"] = true,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "xME7ji7QaSx",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 525.4333129882812,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "50",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["authorOptions"] = {
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 50",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = "136141",
["cooldown"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
},
["Enemy Casting"] = {
["iconSource"] = 0,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.600015258789,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["use_interruptible"] = true,
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["remaining_operator"] = "<",
["event"] = "Cast",
["names"] = {
},
["remaining"] = "1",
["spellIds"] = {
},
["use_remaining"] = false,
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["unit"] = "target",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "8YW6jgjk4nd",
["parent"] = "Power, Health and Enemy Details",
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 1,
},
["changes"] = {
{
["value"] = {
1,
1,
1,
1,
},
["property"] = "color",
},
},
},
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 0,
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["authorOptions"] = {
},
["xOffset"] = 555.2531909179688,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy Casting",
["alpha"] = 1,
["useCooldownModRate"] = true,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
["displayIcon"] = 134164,
["cooldown"] = false,
["keepAspectRatio"] = false,
},
["Power 80"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.4999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
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
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
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
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = "136157",
["color"] = {
1,
1,
1,
1,
},
["xOffset"] = 645.0331909179688,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 80",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "ony4LRmK9i7",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "80",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["icon"] = false,
},
["Party 4 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["authorOptions"] = {
},
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["yOffset"] = -150.5692246657152,
["anchorPoint"] = "CENTER",
["selfPoint"] = "BOTTOM",
["cooldownSwipe"] = true,
["frameStrata"] = 1,
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
["unit"] = "player",
["duration"] = "1",
["event"] = "Health",
["use_unit"] = true,
["unevent"] = "auto",
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["check"] = "update",
["names"] = {
},
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
["adjustedMax"] = "",
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["desaturate"] = false,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["font"] = "聊天",
["version"] = 1,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["cooldownEdge"] = false,
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
["icon"] = true,
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["shadowXOffset"] = 1,
["useTooltip"] = true,
["progressSource"] = {
-1,
"",
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["wordWrap"] = "WordWrap",
["fixedWidth"] = 200,
["preferToUpdate"] = false,
["parent"] = "Power, Health and Enemy Details",
["config"] = {
},
["width"] = 30,
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 4 Is Hurt",
["zoom"] = 0,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["justify"] = "RIGHT",
["uid"] = "FhlmFnl7cvf",
["inverse"] = false,
["conditions"] = {
},
["shadowColor"] = {
0,
0,
0,
1,
},
["displayIcon"] = 136220,
["cooldown"] = false,
["xOffset"] = 495.3808750697547,
},
["Target Health Below 75"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.5000152587891,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["use_power"] = false,
["use_showCost"] = true,
["unit"] = "target",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_percentpower"] = false,
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "BxtkPQQlFWJ",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["value"] = "75",
["op"] = ">",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["color"] = {
1,
1,
1,
1,
},
["icon"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Target Health Below 75",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["xOffset"] = 555.3333129882812,
["displayIcon"] = 132110,
["cooldown"] = false,
["selfPoint"] = "CENTER",
},
["Target Aggro"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.5399862670898,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
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
["itemName"] = 0,
["names"] = {
},
["use_messageType"] = false,
["use_genericShowOn"] = true,
["genericShowOn"] = "showOnCooldown",
["use_unit"] = true,
["use_message"] = false,
["use_ismoving"] = true,
["use_inverse"] = false,
["use_spec"] = true,
["spellIds"] = {
},
["spellName"] = 5176,
["type"] = "custom",
["debuffType"] = "HELPFUL",
["instance_size"] = {
},
["use_sourceName"] = false,
["use_moveSpeed"] = false,
["custom_type"] = "stateupdate",
["use_itemName"] = true,
["use_targetRequired"] = false,
["event"] = "Conditions",
["subeventSuffix"] = "_CAST_START",
["realSpellName"] = "Wrath",
["use_spellName"] = true,
["custom"] = "function(allstates)\n    if not UnitAffectingCombat(\"player\") then\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n        \n        return true\n    end\n    \n    local unit = \"target\"\n    \n    local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n    local unitAffectingCombat = UnitAffectingCombat(unit)\n    \n    if isTanking or not unitAffectingCombat then\n        allstates[\"\"] = allstates[\"\"] or {show = true}\n        allstates[\"\"].show = true\n        allstates[\"\"].changed = true\n    else\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n    end\n    \n    return true\nend\n\n\n\n",
["subeventPrefix"] = "SPELL",
["check"] = "update",
["unit"] = "target",
["use_track"] = true,
["customVariables"] = "{}",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["icon"] = true,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 465.5664672851563,
["cooldown"] = false,
["displayIcon"] = "134074",
["authorOptions"] = {
},
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Target Aggro",
["color"] = {
1,
1,
1,
1,
},
["useCooldownModRate"] = true,
["width"] = 30,
["alpha"] = 1,
["uid"] = "nDm(m3oP2SZ",
["inverse"] = false,
["selfPoint"] = "CENTER",
["conditions"] = {
},
["information"] = {
},
["preferToUpdate"] = false,
},
["Power 40"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.3999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
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
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
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
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["icon"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = false,
["displayIcon"] = "136135",
["color"] = {
1,
1,
1,
1,
},
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 40",
["xOffset"] = 555.3334350585938,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "FeEgssL2qtc",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "40",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["selfPoint"] = "CENTER",
},
["Health Below 75"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.5,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["use_showCost"] = true,
["use_power"] = false,
["event"] = "Health",
["unit"] = "player",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["use_percentpower"] = false,
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = 135917,
["xOffset"] = 465.3333129882813,
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 75",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "fqgz)L9Ic8o",
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["op"] = ">",
["value"] = "75",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
},
["Undead or Mechanical"] = {
["iconSource"] = 0,
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.5999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = true,
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["unit"] = "player",
["events"] = "PLAYER_TARGET_CHANGED",
["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
["custom_type"] = "status",
["check"] = "event",
["names"] = {
},
["spellIds"] = {
},
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["parent"] = "Power, Health and Enemy Details",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "CENTER",
["cooldown"] = true,
["displayIcon"] = 132507,
["xOffset"] = 525.373312988281,
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Undead or Mechanical",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["uid"] = "aNMpteUzJ7h",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 1,
},
["changes"] = {
{
["property"] = "color",
},
},
},
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 0,
},
["changes"] = {
{
["value"] = {
1,
1,
1,
1,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["keepAspectRatio"] = false,
},
["Power 30"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.4999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["use_unit"] = true,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "7cD4v7ACqbn",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "30",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["color"] = {
1,
1,
1,
1,
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 30",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["xOffset"] = 585.1334350585937,
["displayIcon"] = 136134,
["cooldown"] = false,
["icon"] = false,
},
["Power 70"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.5000152587891,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["use_unit"] = true,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "lB4f3j)(HaO",
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "70",
["op"] = "<",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["authorOptions"] = {
},
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 70",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["xOffset"] = 465.5333129882813,
["displayIcon"] = "136154",
["cooldown"] = false,
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
},
["Power 60"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.3999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
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
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = "136151",
["xOffset"] = 495.5331909179688,
["authorOptions"] = {
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 60",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["uid"] = "HWbRM6gTPpL",
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "60",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
},
["Power 15"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -225.4999938964844,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["use_power"] = false,
["event"] = "Power",
["use_percentpower"] = false,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
["use_showCost"] = false,
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
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
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["ROGUE"] = true,
["WARRIOR"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 435.4664672851563,
["cooldown"] = false,
["displayIcon"] = 133217,
["selfPoint"] = "CENTER",
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 15",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["uid"] = "Ekw)GUIZURB",
["inverse"] = false,
["preferToUpdate"] = false,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "15",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["color"] = {
1,
1,
1,
1,
},
},
["Power 100"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -195.4999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["icon"] = false,
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Power",
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["unit"] = "player",
["subeventPrefix"] = "SPELL",
["use_powertype"] = false,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
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
["class"] = {
["single"] = "WARRIOR",
["multi"] = {
["WARRIOR"] = true,
["ROGUE"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = "136164",
["authorOptions"] = {
},
["color"] = {
1,
1,
1,
1,
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 100",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["uid"] = "G8r)WFyNrDq",
["inverse"] = false,
["xOffset"] = 585.1334350585937,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "100",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
},
["Player is moving"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -135.5999862670899,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["itemName"] = 0,
["use_genericShowOn"] = true,
["genericShowOn"] = "showOnCooldown",
["subeventPrefix"] = "SPELL",
["names"] = {
},
["use_spec"] = true,
["use_track"] = true,
["debuffType"] = "HELPFUL",
["use_message"] = false,
["spellName"] = 5176,
["instance_size"] = {
},
["use_sourceName"] = false,
["use_inverse"] = false,
["use_targetRequired"] = false,
["subeventSuffix"] = "_CAST_START",
["use_itemName"] = true,
["use_moveSpeed"] = false,
["event"] = "Conditions",
["realSpellName"] = "Wrath",
["use_spellName"] = true,
["spellIds"] = {
},
["type"] = "unit",
["use_ismoving"] = true,
["use_unit"] = true,
["use_messageType"] = false,
["unit"] = "target",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["useGlowColor"] = false,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["glowDuration"] = 1,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "WCnPFoN6N2H",
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["information"] = {
},
["conditions"] = {
},
["xOffset"] = 615.0237322126118,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Player is moving",
["color"] = {
1,
1,
1,
1,
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["config"] = {
},
["inverse"] = false,
["icon"] = true,
["displayIcon"] = 134301,
["cooldown"] = true,
["preferToUpdate"] = false,
},
["Health Below 20"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.5999847412109,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
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
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["use_showCost"] = true,
["use_power"] = false,
["event"] = "Health",
["unit"] = "player",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["use_percentpower"] = false,
["use_powertype"] = true,
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["text"] = false,
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glow"] = false,
["glowScale"] = 1,
["glowThickness"] = 1,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["single"] = "ROGUE",
["multi"] = {
["ROGUE"] = true,
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["config"] = {
},
["keepAspectRatio"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["animation"] = {
["start"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["type"] = "none",
["easeStrength"] = 3,
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["cooldown"] = false,
["displayIcon"] = 135915,
["authorOptions"] = {
},
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 20",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["uid"] = "YA3Gcj4D4F5",
["inverse"] = false,
["xOffset"] = 615.0331909179688,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percenthealth",
["op"] = ">",
["value"] = "20",
},
["changes"] = {
{
["value"] = {
1,
1,
1,
0,
},
["property"] = "color",
},
},
},
},
["information"] = {
},
["icon"] = false,
},
["Enemy Range 20"] = {
["iconSource"] = -1,
["color"] = {
1,
1,
1,
1,
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -165.6466681925456,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["cooldownEdge"] = false,
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "unit",
["subeventSuffix"] = "_CAST_START",
["event"] = "Range Check",
["names"] = {
},
["range"] = "20",
["unit"] = "target",
["spellIds"] = {
},
["use_range"] = true,
["use_unit"] = true,
["subeventPrefix"] = "SPELL",
["range_operator"] = "<=",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["animation"] = {
["start"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["main"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
["finish"] = {
["easeStrength"] = 3,
["type"] = "none",
["duration_type"] = "seconds",
["easeType"] = "none",
},
},
["desaturate"] = false,
["subRegions"] = {
{
["type"] = "subbackground",
},
{
["text_shadowXOffset"] = 0,
["text_text_format_s_format"] = "none",
["text_text"] = "%s",
["text_shadowColor"] = {
0,
0,
0,
1,
},
["text_selfPoint"] = "AUTO",
["text_automaticWidth"] = "Auto",
["text_fixedWidth"] = 64,
["anchorYOffset"] = 0,
["text_justify"] = "CENTER",
["rotateText"] = "NONE",
["type"] = "subtext",
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowYOffset"] = 0,
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
["text_fontSize"] = 12,
["anchorXOffset"] = 0,
["text_fontType"] = "OUTLINE",
},
{
["glowFrequency"] = 0.25,
["type"] = "subglow",
["glowDuration"] = 1,
["glowType"] = "buttonOverlay",
["glowLength"] = 10,
["glowYOffset"] = 0,
["glowColor"] = {
1,
1,
1,
1,
},
["useGlowColor"] = false,
["glowXOffset"] = 0,
["glowThickness"] = 1,
["glowScale"] = 1,
["glow"] = false,
["glowLines"] = 8,
["glowBorder"] = false,
},
},
["height"] = 30,
["load"] = {
["use_never"] = false,
["talent"] = {
["multi"] = {
},
},
["class"] = {
["multi"] = {
},
},
["spec"] = {
["multi"] = {
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "y9SKOBfsVYr",
["parent"] = "Power, Health and Enemy Details",
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "CENTER",
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 0,
},
["changes"] = {
{
["property"] = "alpha",
},
},
},
{
["check"] = {
["trigger"] = 1,
["variable"] = "show",
["value"] = 1,
},
["changes"] = {
{
["value"] = 1,
["property"] = "alpha",
},
},
},
},
["xOffset"] = 435.4865893554688,
["authorOptions"] = {
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy Range 20",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
["displayIcon"] = 135129,
["cooldown"] = true,
["keepAspectRatio"] = false,
},
},
["lastArchiveClear"] = 1731794042,
["minimap"] = {
["hide"] = false,
},
["lastUpgrade"] = 1731794044,
["dbVersion"] = 78,
["migrationCutoff"] = 730,
["registered"] = {
},
["editor_font_size"] = 12,
["historyCutoff"] = 730,
["editor_theme"] = "Monokai",
}
