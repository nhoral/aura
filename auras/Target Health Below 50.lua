return {
{
    ["iconSource"] = 0,
    ["authorOptions"] = {
    },
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
                ["use_percentpower"] = false,
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["subeventPrefix"] = "SPELL",
                ["use_unit"] = true,
                ["unit"] = "target",
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
    ["xOffset"] = 525.4333129882812,
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
    ["uid"] = "l3whyg3X7Hn",
    ["zoom"] = 0,
    ["cooldownTextDisabled"] = false,
    ["anchorFrameType"] = "SCREEN",
    ["tocversion"] = 11500,
    ["id"] = "Target Health Below 50",
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
    ["displayIcon"] = 136021,
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