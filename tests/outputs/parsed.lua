WeakAurasSaved = {
	["displays"] = {
		["Combat"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "CrtyJoBAnr7",
			["internalVersion"] = 78,
			["xOffset"] = 585.1331909179687,
			["yOffset"] = -165.6,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["useRem"] = false,
						["useName"] = true,
						["use_incombat"] = true,
						["auranames"] = 					{
							"Demon Skin"
						},
						["use_unit"] = true,
						["ownOnly"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unitExists"] = false,
						["matchesShowOn"] = "showOnActive",
						["spellIds"] = {},
						["unit"] = "player",
						["type"] = "unit",
						["names"] = {},
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "BOTH"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "DRUID",
					["multi"] = 				{
						["DRUID"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = 			{
					["do_custom"] = false,
					["hide_all_glows"] = false
				},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = 134396,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = true,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Enemy In Melee Range"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "ZS(VGt32dqK",
			["internalVersion"] = 78,
			["xOffset"] = 495.4265893554689,
			["yOffset"] = -165.633331044515,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Range Check",
						["use_unit"] = true,
						["range"] = "5",
						["unit"] = "target",
						["spellIds"] = {},
						["use_range"] = true,
						["names"] = {},
						["subeventPrefix"] = "SPELL",
						["range_operator"] = "<=",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0
					},
					["changes"] = 				{
											{
							["property"] = "alpha"
						}
					}
				},
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1
					},
					["changes"] = 				{
											{
							["value"] = 1,
							["property"] = "alpha"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135615,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Health Below 50"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "8gq)711zPo6",
			["internalVersion"] = 78,
			["xOffset"] = 645.0333129882813,
			["yOffset"] = -165.600015258789,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["use_showCost"] = true,
						["use_power"] = false,
						["event"] = "Health",
						["use_percentpower"] = false,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["unit"] = "player",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["value"] = "50",
						["op"] = ">"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135930,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Party 2 Is Hurt"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "jNOmkEXpWC1",
			["internalVersion"] = 78,
			["xOffset"] = 555.1951607840401,
			["yOffset"] = -150.5818120783026,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["alpha"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["customVariables"] = "{}",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "stateupdate",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Health",
						["names"] = {},
						["unevent"] = "auto",
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 3) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party2\"),UnitHealthMax(\"party2\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party2\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
							{
					["activeTriggerMode"] = 1
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["level_operator"] = {"~="},
				["use_spellknown"] = false,
				["size"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["use_never"] = false,
				["level"] = {"120"},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["zoneIds"] = ""
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 134153,
			["desaturate"] = false,
			["useTooltip"] = true,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power 10"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "uzuzZJ6U79G",
			["internalVersion"] = 78,
			["xOffset"] = 644.9333129882812,
			["yOffset"] = -225.4999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_power"] = false,
						["use_showCost"] = false,
						["use_unit"] = true,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["use_percentpower"] = false,
						["event"] = "Power",
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "10",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "135913",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Party 1 Is Hurt"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "xdNc3aDcOfl",
			["internalVersion"] = 78,
			["xOffset"] = 585.0381399972098,
			["yOffset"] = -150.5899938964844,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["alpha"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["custom_type"] = "stateupdate",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {},
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {},
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
						["check"] = "update",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["customVariables"] = "{}"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
							{
					["activeTriggerMode"] = 1
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["use_spellknown"] = false,
				["zoneIds"] = "",
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["use_level"] = false,
				["level"] = {"120"},
				["level_operator"] = {"~="},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135954,
			["desaturate"] = false,
			["useTooltip"] = true,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Target Is Moving"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "fYzi6AJVp9U",
			["internalVersion"] = 78,
			["xOffset"] = 645.0165893554688,
			["yOffset"] = -150.6124938964844,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["alpha"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["customVariables"] = "{}",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Health",
						["use_unit"] = true,
						["unevent"] = "auto",
						["spellIds"] = {},
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["names"] = {},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = 1
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["level_operator"] = {"~="},
				["size"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["use_never"] = false,
				["level"] = {"120"},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["zoneIds"] = ""
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135788,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power, Health and Enemy Details"] = 	{
			["regionType"] = "group",
			["parent"] = nil,
			["uid"] = "oyd4JDRwNo9",
			["internalVersion"] = 78,
			["xOffset"] = -273.8443603515625,
			["yOffset"] = -1.000030517578125,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = 		{
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
				["a"] = 1
			},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {}
		},
		["Target Health Below 20"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = ")u5IFAi1R()",
			["internalVersion"] = 78,
			["xOffset"] = 495.5333129882813,
			["yOffset"] = -195.5000305175781,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["use_power"] = false,
						["use_showCost"] = true,
						["unit"] = "target",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["value"] = "20",
						["op"] = ">"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 132111,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Party 3 Is Hurt"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "hCrU8TLTAb)",
			["internalVersion"] = 78,
			["xOffset"] = 525.3809971400667,
			["yOffset"] = -150.5749938964844,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["alpha"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
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
						["spellIds"] = {},
						["check"] = "update",
						["names"] = {},
						["custom_hide"] = "timed",
						["customVariables"] = "{}"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
							{
					["activeTriggerMode"] = 1
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["level_operator"] = {"~="},
				["use_spellknown"] = false,
				["zoneIds"] = "",
				["spec"] = 			{
					["multi"] = {}
				},
				["use_never"] = false,
				["level"] = {"120"},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136172,
			["desaturate"] = false,
			["useTooltip"] = true,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power 90"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "J6J8wagxkea",
			["internalVersion"] = 78,
			["xOffset"] = 615.0334350585938,
			["yOffset"] = -195.5,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "90",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136159",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 20"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "eFdY33D7mdY",
			["internalVersion"] = 78,
			["xOffset"] = 615.0333129882813,
			["yOffset"] = -225.4,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "20",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136173,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 5"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "xAVZLAwDoZG",
			["internalVersion"] = 78,
			["xOffset"] = 435.4665893554688,
			["yOffset"] = -195.6428510393415,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_power"] = false,
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_showCost"] = false,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "5"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["ROGUE"] = true,
						["WARRIOR"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136070,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Target Health Below 50"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "l3whyg3X7Hn",
			["internalVersion"] = 78,
			["xOffset"] = 525.4333129882812,
			["yOffset"] = -195.5,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["use_power"] = false,
						["use_showCost"] = true,
						["use_percentpower"] = false,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["unit"] = "target",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["op"] = ">",
						["value"] = "50"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136021,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Enemy Loose"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "EeOYElnJOLf",
			["internalVersion"] = 78,
			["xOffset"] = 435.5000447591146,
			["yOffset"] = -135.5600015258789,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {0.9921569228172302,1,0.988235354423523,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["duration"] = "1",
						["names"] = {},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["event"] = "Health",
						["customStacks"] = "function() return aura_env.count end\n",
						["custom_type"] = "stateupdate",
						["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
						["spellIds"] = {},
						["use_unit"] = true,
						["check"] = "update",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "{\n  stacks = true,\n}"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true
					}
				},
				["zoneIds"] = ""
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = 			{
					["custom"] = "",
					["do_custom"] = false
				}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 134140,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Casting"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "VYXlh1iMyFX",
			["internalVersion"] = 78,
			["xOffset"] = 466.1777709960936,
			["yOffset"] = -135.5642719813756,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cast",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {},
						["use_unit"] = true,
						["unit"] = "player",
						["names"] = {},
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1
					},
					["changes"] = 				{
											{
							["property"] = "color"
						}
					}
				},
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136099,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Example Enemy Loose"] = 	{
			["regionType"] = "aurabar",
			["parent"] = nil,
			["uid"] = "SVG8Pdt0q3b",
			["internalVersion"] = 78,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["width"] = 5,
			["height"] = 5,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = 		{
				["r"] = 1,
				["g"] = 1,
				["b"] = 1,
				["a"] = 1
			},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {},
						["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
						["unit"] = "player",
						["check"] = "update",
						["names"] = {},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {}
		},
		["Power 50"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "xME7ji7QaSx",
			["internalVersion"] = 78,
			["xOffset"] = 525.4333129882812,
			["yOffset"] = -225.3999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "50",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136141",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Enemy Casting"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "8YW6jgjk4nd",
			["internalVersion"] = 78,
			["xOffset"] = 555.2531909179688,
			["yOffset"] = -165.600015258789,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["use_interruptible"] = true,
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["remaining_operator"] = "<",
						["event"] = "Cast",
						["names"] = {},
						["remaining"] = "1",
						["spellIds"] = {},
						["use_remaining"] = false,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["unit"] = "target",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,1},
							["property"] = "color"
						}
					}
				},
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 134164,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power 80"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "ony4LRmK9i7",
			["internalVersion"] = 78,
			["xOffset"] = 645.0331909179688,
			["yOffset"] = -195.4999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_unit"] = true,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "80"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136157",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Party 4 Is Hurt"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "FhlmFnl7cvf",
			["internalVersion"] = 78,
			["xOffset"] = 495.3808750697547,
			["yOffset"] = -150.5692246657152,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOM",
			["alpha"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["customVariables"] = "{}",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {},
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["unevent"] = "auto",
						["spellIds"] = {},
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["use_unit"] = true,
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
							{
					["activeTriggerMode"] = 1
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["use_spellknown"] = false,
				["size"] = 			{
					["multi"] = {}
				},
				["level_operator"] = {"~="},
				["use_level"] = false,
				["level"] = {"120"},
				["spec"] = 			{
					["multi"] = {}
				},
				["zoneIds"] = ""
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeType"] = "none",
					["easeStrength"] = 3,
					["preset"] = "alphaPulse",
					["duration_type"] = "seconds"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = 		{
				["forceEvents"] = true,
				["ignoreOptionsEventErrors"] = true
			},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136220,
			["desaturate"] = false,
			["useTooltip"] = true,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Target Health Below 75"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "BxtkPQQlFWJ",
			["internalVersion"] = 78,
			["xOffset"] = 555.3333129882812,
			["yOffset"] = -195.5000152587891,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["use_power"] = false,
						["use_showCost"] = true,
						["unit"] = "target",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_percentpower"] = false,
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["value"] = "75",
						["op"] = ">"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 132110,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Target Aggro"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "nDm(m3oP2SZ",
			["internalVersion"] = 78,
			["xOffset"] = 465.5664672851563,
			["yOffset"] = -165.5399862670898,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["itemName"] = 0,
						["names"] = {},
						["use_messageType"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["use_ismoving"] = true,
						["use_message"] = false,
						["use_inverse"] = false,
						["use_spec"] = true,
						["spellIds"] = {},
						["spellName"] = 5176,
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["instance_size"] = {},
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
						["customVariables"] = "{}"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "134074",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power 40"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "FeEgssL2qtc",
			["internalVersion"] = 78,
			["xOffset"] = 555.3334350585938,
			["yOffset"] = -225.3999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_unit"] = true,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "40"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136135",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Health Below 75"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "fqgz)L9Ic8o",
			["internalVersion"] = 78,
			["xOffset"] = 465.3333129882813,
			["yOffset"] = -195.5,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["use_showCost"] = true,
						["use_power"] = false,
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_percentpower"] = false,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["op"] = ">",
						["value"] = "75"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135917,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Undead or Mechanical"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "aNMpteUzJ7h",
			["internalVersion"] = 78,
			["xOffset"] = 525.373312988281,
			["yOffset"] = -165.5999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {},
						["events"] = "PLAYER_TARGET_CHANGED",
						["custom_type"] = "status",
						["check"] = "event",
						["names"] = {},
						["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1
					},
					["changes"] = 				{
											{
							["property"] = "color"
						}
					}
				},
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,1},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 132507,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Power 30"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "7cD4v7ACqbn",
			["internalVersion"] = 78,
			["xOffset"] = 585.1334350585937,
			["yOffset"] = -225.4999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "30",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 136134,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 70"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "lB4f3j)(HaO",
			["internalVersion"] = 78,
			["xOffset"] = 465.5333129882813,
			["yOffset"] = -225.5000152587891,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["value"] = "70",
						["op"] = "<"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136154",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 60"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "HWbRM6gTPpL",
			["internalVersion"] = 78,
			["xOffset"] = 495.5331909179688,
			["yOffset"] = -225.3999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_unit"] = true,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "60"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136151",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 15"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "Ekw)GUIZURB",
			["internalVersion"] = 78,
			["xOffset"] = 435.4664672851563,
			["yOffset"] = -225.4999938964844,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_power"] = false,
						["event"] = "Power",
						["use_percentpower"] = false,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["use_showCost"] = false,
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "15"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["ROGUE"] = true,
						["WARRIOR"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 133217,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Power 100"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "G8r)WFyNrDq",
			["internalVersion"] = 78,
			["xOffset"] = 585.1334350585937,
			["yOffset"] = -195.4999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["use_unit"] = true,
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_showCost"] = false,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = false,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percentpower",
						["op"] = "<",
						["value"] = "100"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = "136164",
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		},
		["Player is moving"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "WCnPFoN6N2H",
			["internalVersion"] = 78,
			["xOffset"] = 615.0237322126118,
			["yOffset"] = -135.5999862670899,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["names"] = {},
						["use_spec"] = true,
						["use_track"] = true,
						["spellName"] = 5176,
						["use_message"] = false,
						["debuffType"] = "HELPFUL",
						["instance_size"] = {},
						["use_sourceName"] = false,
						["use_inverse"] = false,
						["use_targetRequired"] = false,
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["use_moveSpeed"] = false,
						["event"] = "Conditions",
						["realSpellName"] = "Wrath",
						["use_spellName"] = true,
						["spellIds"] = {},
						["type"] = "unit",
						["use_ismoving"] = true,
						["use_unit"] = true,
						["use_messageType"] = false,
						["unit"] = "target"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = {},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 134301,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Enemy Range 20"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "y9SKOBfsVYr",
			["internalVersion"] = 78,
			["xOffset"] = 435.4865893554688,
			["yOffset"] = -165.6466681925456,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Range Check",
						["names"] = {},
						["range"] = "20",
						["unit"] = "target",
						["spellIds"] = {},
						["use_range"] = true,
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["range_operator"] = "<=",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0
					},
					["changes"] = 				{
											{
							["property"] = "alpha"
						}
					}
				},
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1
					},
					["changes"] = 				{
											{
							["value"] = 1,
							["property"] = "alpha"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["multi"] = {}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["finish"] = {},
				["init"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = -1,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135129,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = true,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = true
		},
		["Health Below 20"] = 	{
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["uid"] = "YA3Gcj4D4F5",
			["internalVersion"] = 78,
			["xOffset"] = 615.0331909179688,
			["yOffset"] = -165.5999847412109,
			["width"] = 30,
			["height"] = 30,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["color"] = {1,1,1,1},
			["triggers"] = 		{
							{
					["trigger"] = 				{
						["type"] = "unit",
						["subeventSuffix"] = "_CAST_START",
						["use_showCost"] = true,
						["use_power"] = false,
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {},
						["powertype"] = 3,
						["spellIds"] = {},
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_percentpower"] = false,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
							{
					["activeTriggerMode"] = -10
				}
			},
			["conditions"] = 		{
							{
					["check"] = 				{
						["trigger"] = 1,
						["variable"] = "percenthealth",
						["op"] = ">",
						["value"] = "20"
					},
					["changes"] = 				{
											{
							["value"] = {1,1,1,0},
							["property"] = "color"
						}
					}
				}
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = 			{
					["multi"] = {}
				},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = 			{
					["multi"] = {}
				},
				["size"] = 			{
					["multi"] = {}
				}
			},
			["actions"] = 		{
				["start"] = {},
				["init"] = {},
				["finish"] = {}
			},
			["animation"] = 		{
				["start"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["main"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				},
				["finish"] = 			{
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none"
				}
			},
			["config"] = {},
			["authorOptions"] = {},
			["information"] = {},
			["iconSource"] = 0,
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["displayIcon"] = 135915,
			["desaturate"] = false,
			["useTooltip"] = false,
			["zoom"] = 0,
			["cooldown"] = false,
			["cooldownTextDisabled"] = false,
			["useCooldownModRate"] = true,
			["keepAspectRatio"] = false,
			["icon"] = false
		}
	},
	["dbVersion"] = 78,
	["minimap"] = {
		["hide"] = false
	}
}