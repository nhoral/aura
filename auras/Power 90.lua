return {
{
    ["iconSource"] = 0,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -195.5,
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
    ["source"] = "import",
    ["uid"] = "J6J8wagxkea",
    ["icon"] = false,
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["xOffset"] = 615.0334350585938,
    ["information"] = {
    },
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "percentpower",
                ["value"] = "90",
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
    ["authorOptions"] = {
    },
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["frameStrata"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Power 90",
    ["useCooldownModRate"] = true,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["keepAspectRatio"] = false,
    ["displayIcon"] = "136159",
    ["cooldown"] = false,
    ["color"] = {
        1,
        1,
        1,
        1,
    },
}
}