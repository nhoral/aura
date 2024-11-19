return {
{
    ["iconSource"] = 0,
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
                ["unit"] = "player",
                ["use_power"] = false,
                ["use_showCost"] = false,
                ["use_unit"] = true,
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["subeventPrefix"] = "SPELL",
                ["use_percentpower"] = false,
                ["event"] = "Power",
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
    ["uid"] = "uzuzZJ6U79G",
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
                ["variable"] = "percentpower",
                ["value"] = "10",
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
    ["icon"] = false,
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
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["useCooldownModRate"] = true,
    ["tocversion"] = 11500,
    ["id"] = "Power 10",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["width"] = 30,
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["keepAspectRatio"] = false,
    ["displayIcon"] = "135913",
    ["cooldown"] = false,
    ["xOffset"] = 644.9333129882812,
}
}