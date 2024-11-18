["Combat"] = {
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
	["triggers"] = {
			{
			["trigger"] = 		{
				["useRem"] = false,
				["useName"] = true,
				["use_incombat"] = true,
				["auranames"] = 			{
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
	["load"] = {
		["use_never"] = false,
		["talent"] = 	{
			["multi"] = {}
		},
		["spec"] = 	{
			["multi"] = {}
		},
		["class"] = 	{
			["single"] = "DRUID",
			["multi"] = 		{
				["DRUID"] = true
			}
		},
		["size"] = 	{
			["multi"] = {}
		}
	},
	["actions"] = {
		["start"] = {},
		["finish"] = 	{
			["do_custom"] = false,
			["hide_all_glows"] = false
		},
		["init"] = {}
	},
	["animation"] = {
		["start"] = 	{
			["easeStrength"] = 3,
			["type"] = "none",
			["duration_type"] = "seconds",
			["easeType"] = "none"
		},
		["main"] = 	{
			["easeStrength"] = 3,
			["type"] = "none",
			["duration_type"] = "seconds",
			["easeType"] = "none"
		},
		["finish"] = 	{
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
}