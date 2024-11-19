return {
{
    ["iconSource"] = 0,
    ["xOffset"] = 495.5331909179688,
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
                ["use_unit"] = true,
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["use_showCost"] = false,
                ["subeventPrefix"] = "SPELL",
                ["unit"] = "player",
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
        ["spec"] = {
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
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["useAdjustededMax"] = false,
    ["source"] = "import",
    ["authorOptions"] = {
    },
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["preferToUpdate"] = false,
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["information"] = {
    },
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "percentpower",
                ["value"] = "60",
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
    ["uid"] = "HWbRM6gTPpL",
    ["cooldownTextDisabled"] = false,
    ["zoom"] = 0,
    ["anchorFrameType"] = "SCREEN",
    ["tocversion"] = 11500,
    ["id"] = "Power 60",
    ["useCooldownModRate"] = true,
    ["alpha"] = 1,
    ["width"] = 30,
    ["frameStrata"] = 1,
    ["config"] = {
    },
    ["inverse"] = false,
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["displayIcon"] = "136151",
    ["cooldown"] = false,
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
}
}