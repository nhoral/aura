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
    ["yOffset"] = -165.600015258789,
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
                ["use_interruptible"] = true,
                ["type"] = "unit",
                ["subeventSuffix"] = "_CAST_START",
                ["remaining_operator"] = "<",
                ["event"] = "Cast",
                ["names"] = {
                },
                ["remaining"] = "1",
                ["spellIds"] = {
                },
                ["use_remaining"] = false,
                ["unit"] = "target",
                ["subeventPrefix"] = "SPELL",
                ["use_unit"] = true,
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
            ["multi"] = {
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
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["icon"] = true,
    ["preferToUpdate"] = false,
    ["cooldown"] = false,
    ["displayIcon"] = 134164,
    ["zoom"] = 0,
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["useCooldownModRate"] = true,
    ["tocversion"] = 11500,
    ["id"] = "Enemy Casting",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["xOffset"] = 555.2531909179688,
    ["uid"] = "8YW6jgjk4nd",
    ["inverse"] = false,
    ["authorOptions"] = {
    },
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "show",
                ["value"] = 1,
            },
            ["changes"] = {
                {
                    ["value"] = {
                        1,
                        1,
                        1,
                        1,
                    },
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
}
}