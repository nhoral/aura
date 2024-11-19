
WeakAurasSaved = {
["dynamicIconCache"] = {
},
["editor_tab_spaces"] = 4,
["editor_font_size"] = 12,
["features"] = {
},
["login_squelch_time"] = 10,
["lastArchiveClear"] = 1731794042,
["minimap"] = {
["hide"] = false,
},
["lastUpgrade"] = 1731794044,
["dbVersion"] = 78,
["migrationCutoff"] = 730,
["registered"] = {
},
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
["finish"] = {
["do_custom"] = false,
["hide_all_glows"] = false,
},
["init"] = {
},
},
["triggers"] = {
{
["trigger"] = {
["useRem"] = false,
["useName"] = true,
["use_incombat"] = true,
["auranames"] = {
"Demon Skin",
},
["use_unit"] = true,
["ownOnly"] = true,
["event"] = "Conditions",
["subeventPrefix"] = "SPELL",
["unitExists"] = false,
["matchesShowOn"] = "showOnActive",
["spellIds"] = {
},
["unit"] = "player",
["type"] = "unit",
["names"] = {
},
["subeventSuffix"] = "_CAST_START",
["debuffType"] = "BOTH",
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
["alpha"] = 1,
["uid"] = "CrtyJoBAnr7",
["selfPoint"] = "CENTER",
["xOffset"] = 585.1331909179687,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["information"] = {
},
["displayIcon"] = 134396,
["icon"] = true,
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["zoom"] = 0,
["useTooltip"] = false,
["tocversion"] = 11500,
["id"] = "Combat",
["cooldownTextDisabled"] = true,
["useCooldownModRate"] = true,
["width"] = 30,
["preferToUpdate"] = false,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["conditions"] = {
},
["cooldown"] = false,
["authorOptions"] = {
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
["color"] = {
1,
1,
1,
1,
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["selfPoint"] = "CENTER",
["cooldown"] = true,
["displayIcon"] = 135615,
["icon"] = true,
["xOffset"] = 495.4265893554689,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Enemy In Melee Range",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["uid"] = "ZS(VGt32dqK",
["inverse"] = false,
["authorOptions"] = {
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
["information"] = {
},
["preferToUpdate"] = false,
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
["icon"] = false,
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
["xOffset"] = 645.0333129882813,
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 50",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 135930,
["cooldown"] = false,
["authorOptions"] = {
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
["cooldownSwipe"] = true,
["frameStrata"] = 1,
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 3) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party2\"),UnitHealthMax(\"party2\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party2\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["authorOptions"] = {
},
["internalVersion"] = 78,
["keepAspectRatio"] = false,
["selfPoint"] = "BOTTOM",
["preferToUpdate"] = false,
["adjustedMin"] = "",
["shadowYOffset"] = -1,
["desaturate"] = false,
["parent"] = "Power, Health and Enemy Details",
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
["text_visible"] = true,
["text_anchorPoint"] = "CENTER",
["text_text_format_p_time_format"] = 0,
["text_fontType"] = "OUTLINE",
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
["wordWrap"] = "WordWrap",
["fixedWidth"] = 200,
["cooldownEdge"] = false,
["adjustedMax"] = "",
["config"] = {
},
["width"] = 30,
["alpha"] = 1,
["zoom"] = 0,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 2 Is Hurt",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["conditions"] = {
},
["uid"] = "jNOmkEXpWC1",
["inverse"] = false,
["semver"] = "1.0.0",
["shadowColor"] = {
0,
0,
0,
1,
},
["displayIcon"] = 134153,
["cooldown"] = false,
["xOffset"] = 555.1951607840401,
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
["authorOptions"] = {
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
["icon"] = false,
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
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 10",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "135913",
["cooldown"] = false,
["xOffset"] = 644.9333129882812,
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
["anchorFrameType"] = "SCREEN",
["cooldownSwipe"] = true,
["useTooltip"] = true,
["customTextUpdate"] = "update",
["automaticWidth"] = "Auto",
["icon"] = true,
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
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
["check"] = "update",
["use_unit"] = true,
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
["internalVersion"] = 78,
["keepAspectRatio"] = false,
["selfPoint"] = "BOTTOM",
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -150.5899938964844,
["desaturate"] = false,
["authorOptions"] = {
},
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
["useAdjustededMin"] = false,
["regionType"] = "icon",
["conditions"] = {
},
["parent"] = "Power, Health and Enemy Details",
["adjustedMax"] = "",
["uid"] = "xdNc3aDcOfl",
["wordWrap"] = "WordWrap",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 1 Is Hurt",
["fixedWidth"] = 200,
["alpha"] = 1,
["width"] = 30,
["semver"] = "1.0.0",
["config"] = {
},
["inverse"] = false,
["zoom"] = 0,
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
["cooldownEdge"] = false,
},
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
["subeventSuffix"] = "_CAST_START",
["unit"] = "player",
["duration"] = "1",
["event"] = "Health",
["use_unit"] = true,
["unevent"] = "auto",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
["subeventPrefix"] = "SPELL",
["check"] = "update",
["names"] = {
},
["custom_type"] = "stateupdate",
["debuffType"] = "HELPFUL",
},
["untrigger"] = {
},
},
["disjunctive"] = "all",
["activeTriggerMode"] = 1,
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
["internalVersion"] = 78,
["progressSource"] = {
-1,
"",
},
["wordWrap"] = "WordWrap",
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
["adjustedMax"] = "",
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
["xOffset"] = 645.0165893554688,
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
["parent"] = "Power, Health and Enemy Details",
["displayText"] = "%c",
["config"] = {
},
["width"] = 30,
["useCooldownModRate"] = true,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Target Is Moving",
["frameStrata"] = 1,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["fixedWidth"] = 200,
["uid"] = "fYzi6AJVp9U",
["inverse"] = false,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["shadowColor"] = {
0,
0,
0,
1,
},
["displayIcon"] = 135788,
["cooldown"] = false,
["justify"] = "RIGHT",
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
["selfPoint"] = "CENTER",
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
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["config"] = {
},
["xOffset"] = -273.8443603515625,
["borderInset"] = 1,
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
["parent"] = "Power, Health and Enemy Details",
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
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
["keepAspectRatio"] = false,
["displayIcon"] = 132111,
["cooldown"] = false,
["preferToUpdate"] = false,
},
["Party 3 Is Hurt"] = {
["outline"] = "OUTLINE",
["iconSource"] = -1,
["wagoID"] = "xPU0qj4Ap",
["authorOptions"] = {
},
["adjustedMax"] = "",
["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
["shadowYOffset"] = -1,
["anchorPoint"] = "CENTER",
["anchorFrameType"] = "SCREEN",
["cooldownSwipe"] = true,
["displayText"] = "%c",
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
["subeventSuffix"] = "_CAST_START",
["custom_type"] = "stateupdate",
["unit"] = "player",
["duration"] = "1",
["event"] = "Health",
["use_unit"] = true,
["unevent"] = "auto",
["subeventPrefix"] = "SPELL",
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["xOffset"] = 525.3809971400667,
["useTooltip"] = true,
["keepAspectRatio"] = false,
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
["preferToUpdate"] = false,
["adjustedMin"] = "",
["yOffset"] = -150.5749938964844,
["desaturate"] = false,
["conditions"] = {
},
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
["selfPoint"] = "BOTTOM",
["displayIcon"] = 136172,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["uid"] = "hCrU8TLTAb)",
["parent"] = "Power, Health and Enemy Details",
["useCooldownModRate"] = true,
["wordWrap"] = "WordWrap",
["cooldownTextDisabled"] = false,
["semver"] = "1.0.0",
["tocversion"] = 11500,
["id"] = "Party 3 Is Hurt",
["justify"] = "RIGHT",
["alpha"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["frameStrata"] = 1,
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
["color"] = {
0.96470588235294,
0.89803921568627,
0.91764705882353,
1,
},
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
["icon"] = false,
["preferToUpdate"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 615.0334350585938,
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
["authorOptions"] = {
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 90",
["useCooldownModRate"] = true,
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "136159",
["cooldown"] = false,
["color"] = {
1,
1,
1,
1,
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
["authorOptions"] = {
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
["icon"] = false,
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
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 20",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 136173,
["cooldown"] = false,
["xOffset"] = 615.0333129882813,
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
["xOffset"] = 435.4665893554688,
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
["cooldown"] = false,
["displayIcon"] = 136070,
["color"] = {
1,
1,
1,
1,
},
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
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
["keepAspectRatio"] = false,
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
["preferToUpdate"] = false,
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
["displayIcon"] = 136021,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["xOffset"] = 525.4333129882812,
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Target Health Below 50",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["uid"] = "l3whyg3X7Hn",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["color"] = {
1,
1,
1,
1,
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
["alpha"] = 1,
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
["authorOptions"] = {
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
["desaturate"] = false,
["config"] = {
},
["mirror"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 435.5000447591146,
["blendMode"] = "BLEND",
["anchorFrameType"] = "SCREEN",
["useCooldownModRate"] = true,
["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Squirrel",
["auto"] = true,
["cooldownTextDisabled"] = false,
["semver"] = "1.0.7",
["tocversion"] = 11500,
["id"] = "Enemy Loose",
["url"] = "",
["frameStrata"] = 1,
["width"] = 30,
["preferToUpdate"] = false,
["uid"] = "EeOYElnJOLf",
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 134140,
["information"] = {
["forceEvents"] = true,
["ignoreOptionsEventErrors"] = true,
},
["selfPoint"] = "CENTER",
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
["progressSource"] = {
-1,
"",
},
["selfPoint"] = "CENTER",
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 466.1777709960936,
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
["icon"] = true,
["authorOptions"] = {
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Casting",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
["displayIcon"] = 136099,
["cooldown"] = false,
["preferToUpdate"] = false,
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
["sparkHidden"] = "NEVER",
["frameStrata"] = 1,
["information"] = {
},
["xOffset"] = 0,
["icon"] = false,
["useAdjustededMin"] = false,
["regionType"] = "aurabar",
["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
["selfPoint"] = "CENTER",
["icon_side"] = "RIGHT",
["uid"] = "SVG8Pdt0q3b",
["sparkHeight"] = 30,
["texture"] = "Solid",
["width"] = 5,
["zoom"] = 0,
["spark"] = false,
["height"] = 5,
["id"] = "Example Enemy Loose",
["sparkColor"] = {
1,
1,
1,
1,
},
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["backgroundColor"] = {
0,
0,
1,
1,
},
["config"] = {
},
["inverse"] = false,
["internalVersion"] = 78,
["orientation"] = "HORIZONTAL",
["conditions"] = {
},
["barColor2"] = {
0,
0,
1,
1,
},
["iconSource"] = -1,
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
["xOffset"] = 525.4333129882812,
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
["actions"] = {
["start"] = {
},
["finish"] = {
},
["init"] = {
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
["width"] = 30,
["zoom"] = 0,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Power 50",
["alpha"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "136141",
["cooldown"] = false,
["color"] = {
1,
1,
1,
1,
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
["icon"] = true,
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
["keepAspectRatio"] = false,
["xOffset"] = 555.2531909179688,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy Casting",
["alpha"] = 1,
["useCooldownModRate"] = true,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
["displayIcon"] = 134164,
["cooldown"] = false,
["preferToUpdate"] = false,
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
["displayIcon"] = "136157",
["icon"] = false,
["xOffset"] = 645.0331909179688,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 80",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["uid"] = "ony4LRmK9i7",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["authorOptions"] = {
},
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
["cooldownSwipe"] = true,
["useCooldownModRate"] = true,
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
["subeventSuffix"] = "_CAST_START",
["names"] = {
},
["duration"] = "1",
["event"] = "Health",
["unit"] = "player",
["unevent"] = "auto",
["spellIds"] = {
},
["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
["selfPoint"] = "BOTTOM",
["fixedWidth"] = 200,
["url"] = "https://wago.io/xPU0qj4Ap/1",
["adjustedMax"] = "",
["config"] = {
},
["width"] = 30,
["alpha"] = 1,
["cooldownTextDisabled"] = false,
["justify"] = "RIGHT",
["tocversion"] = 11500,
["id"] = "Party 4 Is Hurt",
["zoom"] = 0,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["displayIcon"] = 136220,
["uid"] = "FhlmFnl7cvf",
["inverse"] = false,
["semver"] = "1.0.0",
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
["authorOptions"] = {
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
["selfPoint"] = "CENTER",
["icon"] = false,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Target Health Below 75",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 132110,
["cooldown"] = false,
["xOffset"] = 555.3333129882812,
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
["use_ismoving"] = true,
["use_message"] = false,
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
["use_itemName"] = true,
["subeventSuffix"] = "_CAST_START",
["use_moveSpeed"] = false,
["use_targetRequired"] = false,
["event"] = "Conditions",
["custom_type"] = "stateupdate",
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
["xOffset"] = 465.5664672851563,
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["authorOptions"] = {
},
["cooldown"] = false,
["displayIcon"] = "134074",
["preferToUpdate"] = false,
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Target Aggro",
["color"] = {
1,
1,
1,
1,
},
["alpha"] = 1,
["width"] = 30,
["useCooldownModRate"] = true,
["uid"] = "nDm(m3oP2SZ",
["inverse"] = false,
["icon"] = true,
["conditions"] = {
},
["information"] = {
},
["selfPoint"] = "CENTER",
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
["authorOptions"] = {
},
["icon"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["color"] = {
1,
1,
1,
1,
},
["cooldown"] = false,
["displayIcon"] = "136135",
["selfPoint"] = "CENTER",
["alpha"] = 1,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 40",
["xOffset"] = 555.3334350585938,
["frameStrata"] = 1,
["width"] = 30,
["cooldownTextDisabled"] = false,
["uid"] = "FeEgssL2qtc",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["preferToUpdate"] = false,
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
["xOffset"] = 465.3333129882813,
["cooldown"] = false,
["displayIcon"] = 135917,
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["authorOptions"] = {
},
["width"] = 30,
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 75",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["zoom"] = 0,
["uid"] = "fqgz)L9Ic8o",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["color"] = {
1,
1,
1,
1,
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
["spellIds"] = {
},
["events"] = "PLAYER_TARGET_CHANGED",
["custom_type"] = "status",
["check"] = "event",
["names"] = {
},
["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
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
["selfPoint"] = "CENTER",
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
["xOffset"] = 525.373312988281,
["cooldown"] = true,
["displayIcon"] = 132507,
["keepAspectRatio"] = false,
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["frameStrata"] = 1,
["tocversion"] = 11500,
["id"] = "Undead or Mechanical",
["useCooldownModRate"] = true,
["alpha"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "aNMpteUzJ7h",
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
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
["preferToUpdate"] = false,
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
["authorOptions"] = {
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
["icon"] = false,
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
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 30",
["alpha"] = 1,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = 136134,
["cooldown"] = false,
["xOffset"] = 585.1334350585937,
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
["authorOptions"] = {
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
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["useCooldownModRate"] = true,
["tocversion"] = 11500,
["id"] = "Power 70",
["frameStrata"] = 1,
["alpha"] = 1,
["width"] = 30,
["zoom"] = 0,
["config"] = {
},
["inverse"] = false,
["keepAspectRatio"] = false,
["displayIcon"] = "136154",
["cooldown"] = false,
["xOffset"] = 465.5333129882813,
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
["xOffset"] = 495.5331909179688,
["cooldown"] = false,
["displayIcon"] = "136151",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 60",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "HWbRM6gTPpL",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["color"] = {
1,
1,
1,
1,
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
["xOffset"] = 435.4664672851563,
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
["cooldown"] = false,
["displayIcon"] = 133217,
["color"] = {
1,
1,
1,
1,
},
["zoom"] = 0,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
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
["keepAspectRatio"] = false,
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
["preferToUpdate"] = false,
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
["displayIcon"] = "136164",
["actions"] = {
["start"] = {
},
["init"] = {
},
["finish"] = {
},
},
["color"] = {
1,
1,
1,
1,
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Power 100",
["frameStrata"] = 1,
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["uid"] = "G8r)WFyNrDq",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["xOffset"] = 585.1334350585937,
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
["spellName"] = 5176,
["use_message"] = false,
["debuffType"] = "HELPFUL",
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
["authorOptions"] = {
},
["keepAspectRatio"] = false,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 615.0237322126118,
["information"] = {
},
["conditions"] = {
},
["preferToUpdate"] = false,
["cooldownTextDisabled"] = false,
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Player is moving",
["color"] = {
1,
1,
1,
1,
},
["useCooldownModRate"] = true,
["anchorFrameType"] = "SCREEN",
["frameStrata"] = 1,
["config"] = {
},
["inverse"] = false,
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
["displayIcon"] = 134301,
["cooldown"] = true,
["icon"] = true,
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
["selfPoint"] = "CENTER",
["icon"] = true,
["useAdjustededMin"] = false,
["regionType"] = "icon",
["xOffset"] = 435.4865893554688,
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
["keepAspectRatio"] = false,
["authorOptions"] = {
},
["width"] = 30,
["zoom"] = 0,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Enemy Range 20",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["config"] = {
},
["inverse"] = false,
["parent"] = "Power, Health and Enemy Details",
["displayIcon"] = 135129,
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
["displayIcon"] = 135915,
["icon"] = false,
["color"] = {
1,
1,
1,
1,
},
["anchorFrameType"] = "SCREEN",
["cooldownTextDisabled"] = false,
["alpha"] = 1,
["tocversion"] = 11500,
["id"] = "Health Below 20",
["useCooldownModRate"] = true,
["frameStrata"] = 1,
["width"] = 30,
["zoom"] = 0,
["uid"] = "YA3Gcj4D4F5",
["inverse"] = false,
["keepAspectRatio"] = false,
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
["xOffset"] = 615.0331909179688,
},
},
["historyCutoff"] = 730,
["editor_theme"] = "Monokai",
}
