return {
{
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
                ["names"] = {
                },
                ["check"] = "event",
                ["custom_type"] = "status",
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
    ["source"] = "import",
    ["uid"] = "aNMpteUzJ7h",
    ["keepAspectRatio"] = false,
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
    ["preferToUpdate"] = false,
    ["information"] = {
    },
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
    ["zoom"] = 0,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["alpha"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Undead or Mechanical",
    ["useCooldownModRate"] = true,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["config"] = {
    },
    ["inverse"] = false,
    ["xOffset"] = 525.373312988281,
    ["displayIcon"] = 132507,
    ["cooldown"] = true,
    ["selfPoint"] = "CENTER",
}
}