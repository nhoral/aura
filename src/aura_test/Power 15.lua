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
    ["selfPoint"] = "CENTER",
    ["source"] = "import",
    ["cooldownTextDisabled"] = false,
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["actions"] = {
    ["start"] = {
    },
    ["init"] = {
    },
    ["finish"] = {
    },
    },
    ["cooldown"] = false,
    ["displayIcon"] = 133217,
    ["config"] = {
    },
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
    ["xOffset"] = 435.4664672851563,
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
    ["keepAspectRatio"] = false,
    }