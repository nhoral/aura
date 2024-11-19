return {
{
    ["iconSource"] = 0,
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -195.5000305175781,
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
                ["unit"] = "target",
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
    ["source"] = "import",
    ["cooldownTextDisabled"] = false,
    ["keepAspectRatio"] = false,
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
    ["preferToUpdate"] = false,
    ["cooldown"] = false,
    ["displayIcon"] = 132111,
    ["config"] = {
    },
    ["xOffset"] = 495.5333129882813,
    ["zoom"] = 0,
    ["width"] = 30,
    ["tocversion"] = 11500,
    ["id"] = "Target Health Below 20",
    ["useCooldownModRate"] = true,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["alpha"] = 1,
    ["uid"] = ")u5IFAi1R()",
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
                ["value"] = "20",
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
    ["color"] = {
        1,
        1,
        1,
        1,
    },
}
}