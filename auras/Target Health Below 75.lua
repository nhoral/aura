return {
{
    ["iconSource"] = 0,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -195.5000152587891,
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
                ["event"] = "Health",
                ["use_power"] = false,
                ["use_showCost"] = true,
                ["unit"] = "target",
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["use_percentpower"] = false,
                ["subeventPrefix"] = "SPELL",
                ["use_unit"] = true,
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
    ["uid"] = "BxtkPQQlFWJ",
    ["authorOptions"] = {
    },
    ["preferToUpdate"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
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
                ["value"] = "75",
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
    ["selfPoint"] = "CENTER",
    ["icon"] = false,
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["useCooldownModRate"] = true,
    ["tocversion"] = 11500,
    ["id"] = "Target Health Below 75",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["width"] = 30,
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["keepAspectRatio"] = false,
    ["displayIcon"] = 132110,
    ["cooldown"] = false,
    ["xOffset"] = 555.3333129882812,
}
}