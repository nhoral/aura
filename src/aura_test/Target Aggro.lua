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
    ["use_message"] = false,
    ["use_messageType"] = false,
    ["use_genericShowOn"] = true,
    ["genericShowOn"] = "showOnCooldown",
    ["names"] = {
    },
    ["use_unit"] = true,
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
    ["cooldownTextDisabled"] = false,
    ["source"] = "import",
    ["authorOptions"] = {
    },
    ["selfPoint"] = "CENTER",
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["frameStrata"] = 1,
    ["cooldown"] = false,
    ["displayIcon"] = "134074",
    ["config"] = {
    },
    ["alpha"] = 1,
    ["zoom"] = 0,
    ["anchorFrameType"] = "SCREEN",
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
    ["xOffset"] = 465.5664672851563,
    ["uid"] = "nDm(m3oP2SZ",
    ["inverse"] = false,
    ["icon"] = true,
    ["conditions"] = {
    },
    ["information"] = {
    },
    ["keepAspectRatio"] = false,
    }