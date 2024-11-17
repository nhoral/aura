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
    ["authorOptions"] = {
    },
    ["source"] = "import",
    ["color"] = {
    1,
    1,
    1,
    1,
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
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["actions"] = {
    ["start"] = {
    },
    ["finish"] = {
    },
    ["init"] = {
    },
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
    ["uid"] = "xME7ji7QaSx",
    ["frameStrata"] = 1,
    ["cooldownTextDisabled"] = false,
    ["width"] = 30,
    ["tocversion"] = 11500,
    ["id"] = "Power 50",
    ["alpha"] = 1,
    ["useCooldownModRate"] = true,
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["xOffset"] = 525.4333129882812,
    ["displayIcon"] = "136141",
    ["cooldown"] = false,
    ["keepAspectRatio"] = false,
    }