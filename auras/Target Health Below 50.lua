return {
{
    ["iconSource"] = 0,
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
                ["event"] = "Health",
                ["use_power"] = false,
                ["use_showCost"] = true,
                ["use_percentpower"] = false,
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["unit"] = "target",
                ["use_unit"] = true,
                ["subeventPrefix"] = "SPELL",
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
    ["source"] = "import",
    ["config"] = {
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
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["authorOptions"] = {
    },
    ["cooldown"] = false,
    ["displayIcon"] = 136021,
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
        },
        ["finish"] = {
        },
    },
    ["xOffset"] = 525.4333129882812,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["alpha"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Target Health Below 50",
    ["frameStrata"] = 1,
    ["useCooldownModRate"] = true,
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["uid"] = "l3whyg3X7Hn",
    ["inverse"] = false,
    ["keepAspectRatio"] = false,
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "percenthealth",
                ["op"] = ">",
                ["value"] = "50",
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