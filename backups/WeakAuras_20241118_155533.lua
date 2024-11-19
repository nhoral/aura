
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["displays"] = {
["Combat"] = {
["iconSource"] = 0,
["parent"] = "Power, Health and Enemy Details",
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
["source"] = "import",
["preferToUpdate"] = false,
["config"] = {
},
["xOffset"] = 585.1331909179687,
["authorOptions"] = {
},
["useAdjustededMin"] = false,
["regionType"] = "icon",
["cooldown"] = false,
["conditions"] = {
},
["keepAspectRatio"] = false,
["color"] = {
1,
1,
1,
1,
},
["width"] = 30,
["useCooldownModRate"] = true,
["zoom"] = 0,
["cooldownTextDisabled"] = true,
["tocversion"] = 11500,
["id"] = "Combat",
["useTooltip"] = false,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["uid"] = "CrtyJoBAnr7",
["inverse"] = false,
["icon"] = true,
["displayIcon"] = 134396,
["information"] = {
},
["selfPoint"] = "CENTER",
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
["use_unit"] = true,
["range"] = "5",
["unit"] = "target",
["spellIds"] = {
},
["use_range"] = true,
["subeventPrefix"] = "SPELL",
["names"] = {
},
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
["uid"] = "ZS(VGt32dqK",
["icon"] = true,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
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
["authorOptions"] = {
},
["cooldownTextDisabled"] = false,
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy In Melee Range",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["xOffset"] = 495.4265893554689,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 135615,
["cooldown"] = true,
["color"] = {
1,
1,
1,
1,
},
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
["event"] = "Health",
["use_power"] = false,
["use_showCost"] = true,
["use_percentpower"] = false,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["unit"] = "player",
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
["config"] = {
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
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = false,
["displayIcon"] = 135930,
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 50",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["xOffset"] = 645.0333129882813,
["uid"] = "8gq)711zPo6",
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
["icon"] = false,
},
["Party 2 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["authorOptions"] = {
},
["adjustedMax"] = "",
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["conditions"] = {
},
["cooldownSwipe"] = true,
["alpha"] = 1,
["customTextUpdate"] = "update",
["automaticWidth"] = "Auto",
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 3) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party2\"),UnitHealthMax(\"party2\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party2\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
["useTooltip"] = true,
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "BOTTOM",
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["yOffset"] = -150.5818120783026,
["desaturate"] = false,
["xOffset"] = 555.1951607840401,
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
["text_text_format_p_format"] = "timed",
["type"] = "subtext",
["anchorXOffset"] = 0,
["text_color"] = {
1,
1,
1,
1,
},
["text_font"] = "Friz Quadrata TT",
["text_shadowXOffset"] = 0,
["text_shadowYOffset"] = 0,
["text_fontType"] = "OUTLINE",
["text_wordWrap"] = "WordWrap",
["text_visible"] = true,
["text_anchorPoint"] = "CENTER",
["text_text_format_p_time_format"] = 0,
["text_text_format_p_time_mod_rate"] = true,
["text_fontSize"] = 12,
["text_text_format_p_time_dynamic_threshold"] = 60,
["anchorYOffset"] = 0,
},
},
["height"] = 30,
["url"] = "https://wago.io/xPU0qj4Ap/1",
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
["class"] = {
["single"] = "WARLOCK",
["multi"] = {
["WARLOCK"] = true,
},
},
["use_never"] = false,
["level"] = {
"120",
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
["keepAspectRatio"] = false,
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
["displayIcon"] = 134153,
["semver"] = "1.0.0",
["parent"] = "Power, Health and Enemy Details",
["uid"] = "jNOmkEXpWC1",
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["zoom"] = 0,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 2 Is Hurt",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["width"] = 30,
["wordWrap"] = "WordWrap",
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
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
["cooldownEdge"] = false,
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
["use_unit"] = true,
["use_power"] = false,
["use_showCost"] = false,
["unit"] = "player",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["event"] = "Power",
["use_percentpower"] = false,
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
["icon"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 644.9333129882812,
["cooldown"] = false,
["displayIcon"] = "135913",
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 10",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
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
["uid"] = "uzuzZJ6U79G",
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
["value"] = "10",
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
["authorOptions"] = {
},
},
["Party 1 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["xOffset"] = 585.0381399972098,
["adjustedMax"] = "",
["adjustedMin"] = "",
["yOffset"] = -150.5899938964844,
["anchorPoint"] = "CENTER",
["semver"] = "1.0.0",
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
["custom_type"] = "stateupdate",
["use_unit"] = true,
["duration"] = "1",
["event"] = "Health",
["names"] = {
},
["unevent"] = "auto",
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
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
["progressSource"] = {
-1,
"",
},
["wordWrap"] = "WordWrap",
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["shadowYOffset"] = -1,
["desaturate"] = false,
["cooldownEdge"] = false,
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
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "BOTTOM",
["displayIcon"] = 135954,
["zoom"] = 0,
["authorOptions"] = {
},
["config"] = {
},
["width"] = 30,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 1 Is Hurt",
["fixedWidth"] = 200,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
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
["uid"] = "xdNc3aDcOfl",
["inverse"] = false,
["preferToUpdate"] = false,
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
["Target Is Moving"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["xOffset"] = 645.0165893554688,
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["yOffset"] = -150.6124938964844,
["anchorPoint"] = "CENTER",
["cooldownSwipe"] = true,
["customTextUpdate"] = "update",
["automaticWidth"] = "Auto",
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
["names"] = {
},
["duration"] = "1",
["event"] = "Health",
["unit"] = "player",
["unevent"] = "auto",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
["check"] = "update",
["use_unit"] = true,
["custom_hide"] = "timed",
["customVariables"] = "{}",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = 1,
},
["selfPoint"] = "BOTTOM",
["internalVersion"] = 78,
["keepAspectRatio"] = false,
["wordWrap"] = "WordWrap",
["authorOptions"] = {
},
["preferToUpdate"] = false,
["adjustedMin"] = "",
["desaturate"] = false,
["shadowYOffset"] = -1,
["font"] = "聊天",
["version"] = 1,
["subRegions"] = {
{
["type"] = "subbackground",
},
},
["height"] = 30,
["cooldownTextDisabled"] = false,
["load"] = {
["use_level"] = false,
["talent"] = {
["multi"] = {
},
},
["level_operator"] = {
"~=",
},
["zoneIds"] = "",
["class"] = {
["single"] = "WARLOCK",
["multi"] = {
["WARLOCK"] = true,
},
},
["use_never"] = false,
["level"] = {
"120",
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
["cooldownEdge"] = false,
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["icon"] = true,
["shadowXOffset"] = 1,
["justify"] = "RIGHT",
["progressSource"] = {
-1,
"",
},
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
["displayIcon"] = 135788,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["uid"] = "fYzi6AJVp9U",
["fixedWidth"] = 200,
["anchorFrameType"] = "SCREEN",
["alpha"] = 1,
["zoom"] = 0,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Target Is Moving",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["width"] = 30,
["adjustedMax"] = "",
["config"] = {
},
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
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
["xOffset"] = -273.8443603515625,
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
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["subeventPrefix"] = "SPELL",
["type"] = "aura2",
["spellIds"] = {
},
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["names"] = {
},
["event"] = "Health",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
},
["internalVersion"] = 78,
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
["subRegions"] = {
},
["load"] = {
["size"] = {
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
["talent"] = {
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
["borderInset"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["uid"] = "oyd4JDRwNo9",
["config"] = {
},
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["conditions"] = {
},
["information"] = {
},
["frameStrata"] = 1,
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
["use_showCost"] = true,
["use_power"] = false,
["event"] = "Health",
["unit"] = "target",
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
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = 132111,
["keepAspectRatio"] = false,
["xOffset"] = 495.5333129882813,
["width"] = 30,
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Target Health Below 20",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = ")u5IFAi1R()",
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
["color"] = {
1,
1,
1,
1,
},
},
["Party 3 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["parent"] = "Power, Health and Enemy Details",
["displayText"] = "%c",
["adjustedMin"] = "",
["yOffset"] = -150.5749938964844,
["anchorPoint"] = "CENTER",
["zoom"] = 0,
["cooldownSwipe"] = true,
["wordWrap"] = "WordWrap",
["customTextUpdate"] = "update",
["automaticWidth"] = "Auto",
["icon"] = true,
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "BOTTOM",
["adjustedMax"] = "",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["shadowYOffset"] = -1,
["desaturate"] = false,
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
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
["class"] = {
["single"] = "WARLOCK",
["multi"] = {
["WARLOCK"] = true,
},
},
["use_never"] = false,
["level"] = {
"120",
},
["spec"] = {
["multi"] = {
},
},
["zoneIds"] = "",
},
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["useAdjustededMax"] = false,
["fontSize"] = 13,
["source"] = "import",
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["shadowXOffset"] = 1,
["useTooltip"] = true,
["keepAspectRatio"] = false,
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
["fixedWidth"] = 200,
["frameStrata"] = 1,
["preferToUpdate"] = false,
["config"] = {
},
["width"] = 30,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 3 Is Hurt",
["justify"] = "RIGHT",
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["displayIcon"] = 136172,
["uid"] = "hCrU8TLTAb)",
["inverse"] = false,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["shadowColor"] = {
0,
0,
0,
1,
},
["conditions"] = {
},
["cooldown"] = false,
["xOffset"] = 525.3809971400667,
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
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["use_unit"] = true,
["unit"] = "player",
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
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = false,
["displayIcon"] = "136159",
["keepAspectRatio"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 90",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["uid"] = "J6J8wagxkea",
["inverse"] = false,
["xOffset"] = 615.0334350585938,
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "90",
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
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["use_unit"] = true,
["unit"] = "player",
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
["icon"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 615.0333129882813,
["cooldown"] = false,
["displayIcon"] = 136173,
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 20",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
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
["uid"] = "eFdY33D7mdY",
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
["authorOptions"] = {
},
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
["use_percentpower"] = false,
["use_power"] = false,
["event"] = "Power",
["unit"] = "player",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["use_unit"] = true,
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
["uid"] = "xAVZLAwDoZG",
["color"] = {
1,
1,
1,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "5",
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
["keepAspectRatio"] = false,
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 5",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 136070,
["cooldown"] = false,
["xOffset"] = 435.4665893554688,
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
["unit"] = "target",
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
["uid"] = "l3whyg3X7Hn",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["preferToUpdate"] = false,
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
["keepAspectRatio"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Target Health Below 50",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["xOffset"] = 525.4333129882812,
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = 136021,
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
["subeventPrefix"] = "SPELL",
["event"] = "Health",
["customStacks"] = "function() return aura_env.count end\n",
["use_absorbMode"] = true,
["spellIds"] = {
},
["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
["use_unit"] = true,
["check"] = "update",
["custom_type"] = "stateupdate",
["unit"] = "player",
["customVariables"] = "{\n  stacks = true,\n}",
},
["untrigger"] = {
},
},
["activeTriggerMode"] = -10,
},
["cooldownTextDisabled"] = false,
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
["url"] = "",
["authorOptions"] = {
},
["selfPoint"] = "CENTER",
["stickyDuration"] = false,
["rotation"] = 0,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
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
["zoneIds"] = "",
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
["size"] = {
["multi"] = {
},
},
},
["displayIcon"] = 134140,
["useAdjustededMax"] = false,
["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
["source"] = "import",
["keepAspectRatio"] = false,
["desaturate"] = false,
["uid"] = "EeOYElnJOLf",
["mirror"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["blendMode"] = "BLEND",
["width"] = 30,
["frameStrata"] = 1,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Squirrel",
["semver"] = "1.0.7",
["zoom"] = 0,
["auto"] = true,
["tocversion"] = 11500,
["id"] = "Enemy Loose",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["xOffset"] = 435.5000447591146,
["config"] = {
},
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
["conditions"] = {
},
["cooldown"] = false,
["actions"] = {
["start"] = {
},
["init"] = {
["custom"] = "",
["do_custom"] = false,
},
["finish"] = {
},
},
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
["event"] = "Cast",
["subeventPrefix"] = "SPELL",
["spellIds"] = {
},
["use_unit"] = true,
["names"] = {
},
["unit"] = "player",
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
["config"] = {
},
["icon"] = true,
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = 136099,
["parent"] = "Power, Health and Enemy Details",
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Casting",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["authorOptions"] = {
},
["uid"] = "VYXlh1iMyFX",
["inverse"] = false,
["xOffset"] = 466.1777709960936,
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
["information"] = {
},
["progressSource"] = {
-1,
"",
},
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
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["type"] = "custom",
["subeventSuffix"] = "_CAST_START",
["event"] = "Health",
["subeventPrefix"] = "SPELL",
["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
["spellIds"] = {
},
["custom_type"] = "stateupdate",
["check"] = "update",
["names"] = {
},
["unit"] = "player",
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
["size"] = {
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
["talent"] = {
["multi"] = {
},
},
},
["sparkBlendMode"] = "ADD",
["useAdjustededMax"] = false,
["backgroundColor"] = {
0,
0,
1,
1,
},
["iconSource"] = -1,
["barColor2"] = {
0,
0,
1,
1,
},
["icon"] = false,
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "aurabar",
["internalVersion"] = 78,
["height"] = 5,
["icon_side"] = "RIGHT",
["config"] = {
},
["sparkHeight"] = 30,
["texture"] = "Solid",
["anchorFrameType"] = "SCREEN",
["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
["spark"] = false,
["alpha"] = 1,
["sparkHidden"] = "NEVER",
["sparkColor"] = {
1,
1,
1,
1,
},
["frameStrata"] = 1,
["width"] = 5,
["id"] = "Example Enemy Loose",
["uid"] = "SVG8Pdt0q3b",
["inverse"] = false,
["zoom"] = 0,
["orientation"] = "HORIZONTAL",
["conditions"] = {
},
["information"] = {
},
["xOffset"] = 0,
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
["use_unit"] = true,
["unit"] = "player",
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
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = false,
["displayIcon"] = "136141",
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 50",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
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
["uid"] = "xME7ji7QaSx",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
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
["xOffset"] = 525.4333129882812,
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
["init"] = {
},
["finish"] = {
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
["unit"] = "target",
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
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
["config"] = {
},
["keepAspectRatio"] = false,
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = false,
["displayIcon"] = 134164,
["parent"] = "Power, Health and Enemy Details",
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Enemy Casting",
["alpha"] = 1,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["xOffset"] = 555.2531909179688,
["uid"] = "8YW6jgjk4nd",
["inverse"] = false,
["authorOptions"] = {
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
["information"] = {
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
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["single"] = "WARRIOR",
["multi"] = {
["ROGUE"] = true,
["WARRIOR"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "ony4LRmK9i7",
["icon"] = false,
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
["value"] = "80",
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
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 80",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["xOffset"] = 645.0331909179688,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = "136157",
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
["Party 4 Is Hurt"] = {
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
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["displayIcon"] = 136220,
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["authorOptions"] = {
},
["useTooltip"] = true,
["progressSource"] = {
-1,
"",
},
["wordWrap"] = "WordWrap",
["displayText"] = "%c",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["yOffset"] = -150.5692246657152,
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
["automaticWidth"] = "Auto",
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
["zoneIds"] = "",
["spec"] = {
["multi"] = {
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
["keepAspectRatio"] = false,
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
["conditions"] = {
},
["semver"] = "1.0.0",
["xOffset"] = 495.3808750697547,
["uid"] = "FhlmFnl7cvf",
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["cooldownTextDisabled"] = false,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 4 Is Hurt",
["zoom"] = 0,
["useCooldownModRate"] = true,
["width"] = 30,
["selfPoint"] = "BOTTOM",
["config"] = {
},
["inverse"] = false,
["preferToUpdate"] = false,
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
["url"] = "https://wago.io/xPU0qj4Ap/1",
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
["unit"] = "target",
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
["selfPoint"] = "CENTER",
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 555.3333129882812,
["cooldown"] = false,
["displayIcon"] = 132110,
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Target Health Below 75",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["icon"] = false,
["uid"] = "BxtkPQQlFWJ",
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
["authorOptions"] = {
},
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
["finish"] = {
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["itemName"] = 0,
["use_unit"] = true,
["use_track"] = true,
["use_genericShowOn"] = true,
["genericShowOn"] = "showOnCooldown",
["names"] = {
},
["unit"] = "target",
["check"] = "update",
["subeventPrefix"] = "SPELL",
["use_spec"] = true,
["custom"] = "function(allstates)\n    if not UnitAffectingCombat(\"player\") then\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n        \n        return true\n    end\n    \n    local unit = \"target\"\n    \n    local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n    local unitAffectingCombat = UnitAffectingCombat(unit)\n    \n    if isTanking or not unitAffectingCombat then\n        allstates[\"\"] = allstates[\"\"] or {show = true}\n        allstates[\"\"].show = true\n        allstates[\"\"].changed = true\n    else\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n    end\n    \n    return true\nend\n\n\n\n",
["debuffType"] = "HELPFUL",
["use_sourceName"] = false,
["spellName"] = 5176,
["instance_size"] = {
},
["type"] = "custom",
["custom_type"] = "stateupdate",
["subeventSuffix"] = "_CAST_START",
["event"] = "Conditions",
["use_targetRequired"] = false,
["use_itemName"] = true,
["use_moveSpeed"] = false,
["realSpellName"] = "Wrath",
["use_spellName"] = true,
["spellIds"] = {
},
["use_inverse"] = false,
["use_ismoving"] = true,
["use_message"] = false,
["use_messageType"] = false,
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
["uid"] = "nDm(m3oP2SZ",
["preferToUpdate"] = false,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "CENTER",
["information"] = {
},
["conditions"] = {
},
["icon"] = true,
["useCooldownModRate"] = true,
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Target Aggro",
["color"] = {
1,
1,
1,
1,
},
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = "134074",
["cooldown"] = false,
["xOffset"] = 465.5664672851563,
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
["use_unit"] = true,
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["spec"] = {
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
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "FeEgssL2qtc",
["selfPoint"] = "CENTER",
["icon"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "40",
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
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 40",
["xOffset"] = 555.3334350585938,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["config"] = {
},
["inverse"] = false,
["color"] = {
1,
1,
1,
1,
},
["displayIcon"] = "136135",
["cooldown"] = false,
["authorOptions"] = {
},
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
["event"] = "Health",
["use_power"] = false,
["use_showCost"] = true,
["unit"] = "player",
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
["uid"] = "fqgz)L9Ic8o",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["preferToUpdate"] = false,
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
["keepAspectRatio"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Health Below 75",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["config"] = {
},
["inverse"] = false,
["xOffset"] = 465.3333129882813,
["displayIcon"] = 135917,
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
["unit"] = "player",
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
["uid"] = "YA3Gcj4D4F5",
["icon"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 615.0331909179688,
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
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 20",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["color"] = {
1,
1,
1,
1,
},
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = 135915,
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
["names"] = {
},
["range"] = "20",
["unit"] = "target",
["spellIds"] = {
},
["use_range"] = true,
["subeventPrefix"] = "SPELL",
["use_unit"] = true,
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
["keepAspectRatio"] = false,
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["cooldown"] = true,
["displayIcon"] = 135129,
["parent"] = "Power, Health and Enemy Details",
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy Range 20",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["uid"] = "y9SKOBfsVYr",
["inverse"] = false,
["xOffset"] = 435.4865893554688,
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
["selfPoint"] = "CENTER",
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
["init"] = {
},
["finish"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["itemName"] = 0,
["use_genericShowOn"] = true,
["genericShowOn"] = "showOnCooldown",
["subeventPrefix"] = "SPELL",
["unit"] = "target",
["use_spec"] = true,
["use_messageType"] = false,
["use_unit"] = true,
["use_ismoving"] = true,
["spellName"] = 5176,
["instance_size"] = {
},
["use_sourceName"] = false,
["type"] = "unit",
["use_targetRequired"] = false,
["subeventSuffix"] = "_CAST_START",
["use_moveSpeed"] = false,
["use_itemName"] = true,
["event"] = "Conditions",
["realSpellName"] = "Wrath",
["use_spellName"] = true,
["spellIds"] = {
},
["use_inverse"] = false,
["use_message"] = false,
["debuffType"] = "HELPFUL",
["use_track"] = true,
["names"] = {
},
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
["preferToUpdate"] = false,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["icon"] = true,
["cooldown"] = true,
["displayIcon"] = 134301,
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
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Player is moving",
["color"] = {
1,
1,
1,
1,
},
["alpha"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "WCnPFoN6N2H",
["inverse"] = false,
["xOffset"] = 615.0237322126118,
["conditions"] = {
},
["information"] = {
},
["authorOptions"] = {
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
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["single"] = "WARRIOR",
["multi"] = {
["ROGUE"] = true,
["WARRIOR"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "HWbRM6gTPpL",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["preferToUpdate"] = false,
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
["variable"] = "percentpower",
["value"] = "60",
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
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 60",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["authorOptions"] = {
},
["config"] = {
},
["inverse"] = false,
["xOffset"] = 495.5331909179688,
["displayIcon"] = "136151",
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
["subeventPrefix"] = "SPELL",
["unit"] = "player",
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
["single"] = "WARRIOR",
["multi"] = {
["ROGUE"] = true,
["WARRIOR"] = true,
},
},
["size"] = {
["multi"] = {
},
},
},
["useAdjustededMax"] = false,
["source"] = "import",
["uid"] = "G8r)WFyNrDq",
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
},
},
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 585.1334350585937,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "100",
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
["keepAspectRatio"] = false,
["cooldownTextDisabled"] = false,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 100",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["color"] = {
1,
1,
1,
1,
},
["config"] = {
},
["inverse"] = false,
["authorOptions"] = {
},
["displayIcon"] = "136164",
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
["use_percentpower"] = false,
["use_power"] = false,
["event"] = "Power",
["unit"] = "player",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["use_unit"] = true,
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
["uid"] = "Ekw)GUIZURB",
["color"] = {
1,
1,
1,
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["preferToUpdate"] = false,
["information"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["value"] = "15",
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
["keepAspectRatio"] = false,
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 15",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["selfPoint"] = "CENTER",
["displayIcon"] = 133217,
["cooldown"] = false,
["xOffset"] = 435.4664672851563,
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
["use_unit"] = true,
["unit"] = "player",
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
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 465.5333129882813,
["cooldown"] = false,
["displayIcon"] = "136154",
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 70",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["color"] = {
1,
1,
1,
1,
},
["uid"] = "lB4f3j)(HaO",
["inverse"] = false,
["authorOptions"] = {
},
["conditions"] = {
{
["check"] = {
["trigger"] = 1,
["variable"] = "percentpower",
["op"] = "<",
["value"] = "70",
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
["subeventPrefix"] = "SPELL",
["names"] = {
},
["powertype"] = 3,
["spellIds"] = {
},
["use_showCost"] = false,
["use_unit"] = true,
["unit"] = "player",
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
["icon"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 585.1334350585937,
["cooldown"] = false,
["displayIcon"] = 136134,
["keepAspectRatio"] = false,
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 30",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
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
["uid"] = "7cD4v7ACqbn",
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
["value"] = "30",
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
["authorOptions"] = {
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
["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
["spellIds"] = {
},
["names"] = {
},
["check"] = "event",
["custom_type"] = "status",
["events"] = "PLAYER_TARGET_CHANGED",
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
["uid"] = "aNMpteUzJ7h",
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
["preferToUpdate"] = false,
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
1,
},
["property"] = "color",
},
},
},
},
["parent"] = "Power, Health and Enemy Details",
["zoom"] = 0,
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Undead or Mechanical",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["color"] = {
1,
1,
1,
1,
},
["config"] = {
},
["inverse"] = false,
["xOffset"] = 525.373312988281,
["displayIcon"] = 132507,
["cooldown"] = true,
["selfPoint"] = "CENTER",
},
},
["features"] = {
},
["editor_font_size"] = 12,
["lastArchiveClear"] = 1731794042,
["minimap"] = {
["hide"] = false,
},
["historyCutoff"] = 730,
["dbVersion"] = 78,
["migrationCutoff"] = 730,
["registered"] = {
},
["login_squelch_time"] = 10,
["lastUpgrade"] = 1731794044,
["editor_theme"] = "Monokai",
}
