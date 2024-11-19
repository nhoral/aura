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
        ["finish"] = {
        },
        ["init"] = {
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
                ["use_unit"] = true,
                ["subeventPrefix"] = "SPELL",
                ["unit"] = "target",
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
    ["uid"] = "8YW6jgjk4nd",
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
    ["icon"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["authorOptions"] = {
    },
    ["information"] = {
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
    ["keepAspectRatio"] = false,
    ["xOffset"] = 555.2531909179688,
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["frameStrata"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Enemy Casting",
    ["alpha"] = 1,
    ["useCooldownModRate"] = true,
    ["width"] = 30,
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["displayIcon"] = 134164,
    ["cooldown"] = false,
    ["preferToUpdate"] = false,
}
}