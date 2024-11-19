return {
{
    ["iconSource"] = 0,
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -135.5642719813756,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["cooldownEdge"] = false,
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
        },
        ["finish"] = {
        },
    },
    ["triggers"] = {
        {
            ["trigger"] = {
                ["type"] = "unit",
                ["subeventSuffix"] = "_CAST_START",
                ["event"] = "Cast",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["use_unit"] = true,
                ["names"] = {
                },
                ["unit"] = "player",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
        ["activeTriggerMode"] = -10,
    },
    ["internalVersion"] = 78,
    ["keepAspectRatio"] = false,
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
            ["single"] = "WARLOCK",
            ["multi"] = {
                ["WARLOCK"] = true,
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
    ["config"] = {
    },
    ["icon"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "CENTER",
    ["preferToUpdate"] = false,
    ["cooldown"] = false,
    ["displayIcon"] = 136099,
    ["zoom"] = 0,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["alpha"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Casting",
    ["frameStrata"] = 1,
    ["useCooldownModRate"] = true,
    ["anchorFrameType"] = "SCREEN",
    ["authorOptions"] = {
    },
    ["uid"] = "VYXlh1iMyFX",
    ["inverse"] = false,
    ["xOffset"] = 466.1777709960936,
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
                        0,
                    },
                    ["property"] = "color",
                },
            },
        },
    },
    ["information"] = {
    },
    ["progressSource"] = {
        -1,
        "",
    },
}
}