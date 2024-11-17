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
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["source"] = "import",
    ["xOffset"] = 585.1334350585937,
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
    ["uid"] = "7cD4v7ACqbn",
    ["useCooldownModRate"] = true,
    ["zoom"] = 0,
    ["anchorFrameType"] = "SCREEN",
    ["tocversion"] = 11500,
    ["id"] = "Power 30",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["config"] = {
    },
    ["inverse"] = false,
    ["authorOptions"] = {
    },
    ["displayIcon"] = 136134,
    ["cooldown"] = false,
    ["keepAspectRatio"] = false,
    }