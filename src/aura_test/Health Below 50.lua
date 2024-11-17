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
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["source"] = "import",
    ["authorOptions"] = {
    },
    ["xOffset"] = 645.0333129882813,
    ["preferToUpdate"] = false,
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
    ["uid"] = "8gq)711zPo6",
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
    ["icon"] = false,
    ["displayIcon"] = 135930,
    ["cooldown"] = false,
    ["keepAspectRatio"] = false,
    }