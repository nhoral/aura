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
    ["xOffset"] = 465.3333129882813,
    ["source"] = "import",
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["authorOptions"] = {
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
    ["displayIcon"] = 135917,
    ["config"] = {
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
    ["keepAspectRatio"] = false,
    }