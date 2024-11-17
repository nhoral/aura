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
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["source"] = "import",
    ["xOffset"] = 644.9333129882812,
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
    ["uid"] = "uzuzZJ6U79G",
    ["useCooldownModRate"] = true,
    ["zoom"] = 0,
    ["anchorFrameType"] = "SCREEN",
    ["tocversion"] = 11500,
    ["id"] = "Power 10",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["config"] = {
    },
    ["inverse"] = false,
    ["authorOptions"] = {
    },
    ["displayIcon"] = "135913",
    ["cooldown"] = false,
    ["keepAspectRatio"] = false,
    }