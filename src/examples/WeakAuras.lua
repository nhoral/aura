WeakAurasSaved = {
	["displays"] = {
		["Casting"] = 	{
			["id"] = "Casting",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 466.1777709960936,
			["yOffset"] = -135.5642719813756,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Casting"
		},
		["Combat"] = 	{
			["id"] = "Combat",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 585.1331909179687,
			["yOffset"] = -165.6,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["useRem"] = false,
						["useName"] = true,
						["use_incombat"] = true,
						["auranames"] = 					{
							"Demon Skin"
						},
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "DRUID",
					["multi"] = 				{
						["DRUID"] = true
					}
				},
				["size"] = {}
			},
			["actions"] = 		{
				["finish"] = 			{
					["do_custom"] = false,
					["hide_all_glows"] = false
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Combat"
		},
		["Enemy Casting"] = 	{
			["id"] = "Enemy Casting",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 555.2531909179688,
			["yOffset"] = -165.600015258789,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Enemy Castin"
		},
		["Enemy In Melee Range"] = 	{
			["id"] = "Enemy In Melee Range",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 495.4265893554689,
			["yOffset"] = -165.633331044515,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = true,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Enemy In Mel"
		},
		["Enemy Loose"] = 	{
			["id"] = "Enemy Loose",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 435.5000447591146,
			["yOffset"] = -135.5600015258789,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.9921569228172302,1,0.988235354423523,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["duration"] = "1",
						["names"] = {},
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["unevent"] = "auto",
						["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["customStacks"] = "function() return aura_env.count end\n",
						["unit"] = "player",
						["custom_type"] = "stateupdate",
						["spellIds"] = {},
						["use_unit"] = true,
						["check"] = "update",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["customVariables"] = "{\n  stacks = true,\n}"
					},
					["untrigger"] = {}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["size"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true
					}
				},
				["zoneIds"] = ""
			},
			["actions"] = 		{
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Enemy Loose"
		},
		["Enemy Range 20"] = 	{
			["id"] = "Enemy Range 20",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 435.4865893554688,
			["yOffset"] = -165.6466681925456,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = true,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Enemy Range "
		},
		["Health Below 20"] = 	{
			["id"] = "Health Below 20",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 615.0331909179688,
			["yOffset"] = -165.5999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Health Below"
		},
		["Health Below 50"] = 	{
			["id"] = "Health Below 50",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 645.0333129882813,
			["yOffset"] = -165.600015258789,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Health Below"
		},
		["Health Below 75"] = 	{
			["id"] = "Health Below 75",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 465.3333129882813,
			["yOffset"] = -195.5,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Health Below"
		},
		["Party 1 Is Hurt"] = 	{
			["id"] = "Party 1 Is Hurt",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 585.0381399972098,
			["yOffset"] = -150.5899938964844,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["debuffType"] = "HELPFUL",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "stateupdate",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Health",
						["names"] = {},
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
						["spellIds"] = {},
						["check"] = "update",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["customVariables"] = "{}"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
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
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Party 1 Is H"
		},
		["Party 2 Is Hurt"] = 	{
			["id"] = "Party 2 Is Hurt",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 555.1951607840401,
			["yOffset"] = -150.5818120783026,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 3) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party2\"),UnitHealthMax(\"party2\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party2\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["names"] = {},
						["custom_type"] = "stateupdate",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = {},
				["level_operator"] = {"~="},
				["use_spellknown"] = false,
				["size"] = {},
				["spec"] = {},
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Party 2 Is H"
		},
		["Party 3 Is Hurt"] = 	{
			["id"] = "Party 3 Is Hurt",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 525.3809971400667,
			["yOffset"] = -150.5749938964844,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["check"] = "update",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["customVariables"] = "{}"
					},
					["untrigger"] = 				{
						["custom"] = "function()\n    return not aura_env.isTriggered\nend"
					}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = {},
				["level_operator"] = {"~="},
				["use_spellknown"] = false,
				["zoneIds"] = "",
				["spec"] = {},
				["use_never"] = false,
				["level"] = {"120"},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Party 3 Is H"
		},
		["Party 4 Is Hurt"] = 	{
			["id"] = "Party 4 Is Hurt",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 495.3808750697547,
			["yOffset"] = -150.5692246657152,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARLOCK",
					["multi"] = 				{
						["WARLOCK"] = true
					}
				},
				["use_spellknown"] = false,
				["size"] = {},
				["level_operator"] = {"~="},
				["use_level"] = false,
				["level"] = {"120"},
				["spec"] = {},
				["zoneIds"] = ""
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Party 4 Is H"
		},
		["Player is moving"] = 	{
			["id"] = "Player is moving",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 615.0237322126118,
			["yOffset"] = -135.5999862670899,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = true,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["use_spec"] = true,
						["use_track"] = true,
						["names"] = {},
						["use_message"] = false,
						["spellName"] = 5176,
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Player is mo"
		},
		["Power 10"] = 	{
			["id"] = "Power 10",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 644.9333129882812,
			["yOffset"] = -225.4999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 10"
		},
		["Power 100"] = 	{
			["id"] = "Power 100",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 585.1334350585937,
			["yOffset"] = -195.4999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 100"
		},
		["Power 15"] = 	{
			["id"] = "Power 15",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 435.4664672851563,
			["yOffset"] = -225.4999938964844,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["ROGUE"] = true,
						["WARRIOR"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 15"
		},
		["Power 20"] = 	{
			["id"] = "Power 20",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 615.0333129882813,
			["yOffset"] = -225.4,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 20"
		},
		["Power 30"] = 	{
			["id"] = "Power 30",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 585.1334350585937,
			["yOffset"] = -225.4999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 30"
		},
		["Power 40"] = 	{
			["id"] = "Power 40",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 555.3334350585938,
			["yOffset"] = -225.3999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 40"
		},
		["Power 5"] = 	{
			["id"] = "Power 5",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 435.4665893554688,
			["yOffset"] = -195.6428510393415,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["ROGUE"] = true,
						["WARRIOR"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 5"
		},
		["Power 50"] = 	{
			["id"] = "Power 50",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 525.4333129882812,
			["yOffset"] = -225.3999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 50"
		},
		["Power 60"] = 	{
			["id"] = "Power 60",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 495.5331909179688,
			["yOffset"] = -225.3999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 60"
		},
		["Power 70"] = 	{
			["id"] = "Power 70",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 465.5333129882813,
			["yOffset"] = -225.5000152587891,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 70"
		},
		["Power 80"] = 	{
			["id"] = "Power 80",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 645.0331909179688,
			["yOffset"] = -195.4999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["spec"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 80"
		},
		["Power 90"] = 	{
			["id"] = "Power 90",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 615.0334350585938,
			["yOffset"] = -195.5,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "WARRIOR",
					["multi"] = 				{
						["WARRIOR"] = true,
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Power 90"
		},
		["Target Aggro"] = 	{
			["id"] = "Target Aggro",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 465.5664672851563,
			["yOffset"] = -165.5399862670898,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["itemName"] = 0,
						["use_message"] = false,
						["use_messageType"] = false,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {},
						["use_unit"] = true,
						["use_ismoving"] = true,
						["use_inverse"] = false,
						["use_spec"] = true,
						["spellIds"] = {},
						["spellName"] = 5176,
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["instance_size"] = {},
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
						["customVariables"] = "{}"
					},
					["untrigger"] = {}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Target Aggro"
		},
		["Target Health Below 20"] = 	{
			["id"] = "Target Health Below 20",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 495.5333129882813,
			["yOffset"] = -195.5000305175781,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Target Healt"
		},
		["Target Health Below 50"] = 	{
			["id"] = "Target Health Below 50",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 525.4333129882812,
			["yOffset"] = -195.5,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Target Healt"
		},
		["Target Health Below 75"] = 	{
			["id"] = "Target Health Below 75",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 555.3333129882812,
			["yOffset"] = -195.5000152587891,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
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
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = 			{
					["single"] = "ROGUE",
					["multi"] = 				{
						["ROGUE"] = true
					}
				},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Target Healt"
		},
		["Target Is Moving"] = 	{
			["id"] = "Target Is Moving",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 645.0165893554688,
			["yOffset"] = -150.6124938964844,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {0.96470588235294,0.89803921568627,0.91764705882353,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = false,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["customVariables"] = "{}",
						["type"] = "custom",
						["custom_hide"] = "timed",
						["custom_type"] = "stateupdate",
						["names"] = {},
						["duration"] = "1",
						["event"] = "Health",
						["unit"] = "player",
						["unevent"] = "auto",
						["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
						["spellIds"] = {},
						["subeventPrefix"] = "SPELL",
						["check"] = "update",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_level"] = false,
				["talent"] = {},
				["level_operator"] = {"~="},
				["size"] = {},
				["spec"] = {},
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Target Is Mo"
		},
		["Undead or Mechanical"] = 	{
			["id"] = "Undead or Mechanical",
			["regionType"] = "icon",
			["parent"] = "Power, Health and Enemy Details",
			["xOffset"] = 525.373312988281,
			["yOffset"] = -165.5999847412109,
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["color"] = {1,1,1,1},
			["desaturate"] = false,
			["alpha"] = 1,
			["cooldown"] = true,
			["glow"] = false,
			["triggers"] = 		{
				[0] = 			{
					["trigger"] = 				{
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
						["spellIds"] = {},
						["custom_type"] = "status",
						["check"] = "event",
						["names"] = {},
						["events"] = "PLAYER_TARGET_CHANGED",
						["debuffType"] = "HELPFUL"
					},
					["untrigger"] = {}
				},
				["activeTriggerMode"] = -10
			},
			["load"] = 		{
				["use_never"] = false,
				["talent"] = {},
				["class"] = {},
				["spec"] = {},
				["size"] = {}
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
			["internalVersion"] = 78,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["iconSource"] = 0,
			["cooldownSwipe"] = false,
			["uid"] = "Undead or Me"
		}
	},
	["dbVersion"] = 78,
	["minimap"] = {
		["hide"] = false
	},
	["login_squelch_time"] = 10,
	["editor_tab_spaces"] = 4
}