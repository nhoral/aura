return {
{
    ["iconSource"] = 0,
    ["xOffset"] = 435.4664672851563,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -225.4999938964844,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["cooldownEdge"] = false,
    ["icon"] = false,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["type"] = "unit",
                ["subeventSuffix"] = "_CAST_START",
                ["use_percentpower"] = false,
                ["use_power"] = false,
                ["event"] = "Power",
                ["unit"] = "player",
                ["names"] = {
                },
                ["powertype"] = 3,
                ["spellIds"] = {
                },
                ["use_showCost"] = false,
                ["use_unit"] = true,
                ["subeventPrefix"] = "SPELL",
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
    ["cooldownTextDisabled"] = false,
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "CENTER",
    ["preferToUpdate"] = false,
    ["information"] = {
    },
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "percentpower",
                ["value"] = "15",
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
    ["uid"] = "Ekw)GUIZURB",
    ["authorOptions"] = {
    },
    ["zoom"] = 0,
    ["width"] = 30,
    ["tocversion"] = 11500,
    ["id"] = "Power 15",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["useCooldownModRate"] = true,
    ["config"] = {
    },
    ["inverse"] = false,
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["displayIcon"] = 133217,
    ["cooldown"] = false,
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
}
}