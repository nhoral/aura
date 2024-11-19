return {
{
    ["iconSource"] = 0,
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -225.3999847412109,
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
    ["useCooldownModRate"] = true,
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["preferToUpdate"] = false,
    ["information"] = {
    },
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "percentpower",
                ["value"] = "40",
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
    ["uid"] = "FeEgssL2qtc",
    ["cooldownTextDisabled"] = false,
    ["zoom"] = 0,
    ["width"] = 30,
    ["tocversion"] = 11500,
    ["id"] = "Power 40",
    ["frameStrata"] = 1,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["xOffset"] = 555.3334350585938,
    ["config"] = {
    },
    ["inverse"] = false,
    ["selfPoint"] = "CENTER",
    ["displayIcon"] = "136135",
    ["cooldown"] = false,
    ["icon"] = false,
}
}