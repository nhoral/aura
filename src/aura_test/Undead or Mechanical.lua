["Undead or Mechanical"] = {
    ["iconSource"] = 0,
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -165.5999847412109,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
    {
    ["trigger"] = {
    ["type"] = "custom",
    ["subeventSuffix"] = "_CAST_START",
    ["event"] = "Health",
    ["subeventPrefix"] = "SPELL",
    ["unit"] = "player",
    ["custom"] = "function()\n    return UnitExists(\"target\") and (UnitCreatureType(\"target\") == \"Undead\" or UnitCreatureType(\"target\") == \"Mechanical\")\nend",
    ["spellIds"] = {
    },
    ["custom_type"] = "status",
    ["check"] = "event",
    ["names"] = {
    },
    ["events"] = "PLAYER_TARGET_CHANGED",
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
    ["xOffset"] = 525.373312988281,
    ["source"] = "import",
    ["frameStrata"] = 1,
    ["keepAspectRatio"] = false,
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
    ["cooldown"] = true,
    ["displayIcon"] = 132507,
    ["config"] = {
    },
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["color"] = {
    1,
    1,
    1,
    1,
    },
    ["tocversion"] = 11500,
    ["id"] = "Undead or Mechanical",
    ["useCooldownModRate"] = true,
    ["alpha"] = 1,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["uid"] = "aNMpteUzJ7h",
    ["inverse"] = false,
    ["selfPoint"] = "CENTER",
    ["conditions"] = {
    {
    ["check"] = {
    ["trigger"] = 1,
    ["variable"] = "show",
    ["value"] = 1,
    },
    ["changes"] = {
    {
    ["property"] = "color",
    },
    },
    },
    {
    ["check"] = {
    ["trigger"] = 1,
    ["variable"] = "show",
    ["value"] = 0,
    },
    ["changes"] = {
    {
    ["value"] = {
    1,
    1,
    1,
    1,
    },
    ["property"] = "color",
    },
    },
    },
    },
    ["information"] = {
    },
    ["parent"] = "Power, Health and Enemy Details",
    }