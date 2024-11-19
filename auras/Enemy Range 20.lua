return {
{
    ["iconSource"] = -1,
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -165.6466681925456,
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
                ["event"] = "Range Check",
                ["names"] = {
                },
                ["range"] = "20",
                ["unit"] = "target",
                ["spellIds"] = {
                },
                ["use_range"] = true,
                ["subeventPrefix"] = "SPELL",
                ["use_unit"] = true,
                ["range_operator"] = "<=",
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
        {
            ["text_shadowXOffset"] = 0,
            ["text_text_format_s_format"] = "none",
            ["text_text"] = "%s",
            ["text_shadowColor"] = {
                0,
                0,
                0,
                1,
            },
            ["text_selfPoint"] = "AUTO",
            ["text_automaticWidth"] = "Auto",
            ["text_fixedWidth"] = 64,
            ["anchorYOffset"] = 0,
            ["text_justify"] = "CENTER",
            ["rotateText"] = "NONE",
            ["type"] = "subtext",
            ["text_color"] = {
                1,
                1,
                1,
                1,
            },
            ["text_font"] = "Friz Quadrata TT",
            ["text_shadowYOffset"] = 0,
            ["text_wordWrap"] = "WordWrap",
            ["text_visible"] = true,
            ["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
            ["text_fontSize"] = 12,
            ["anchorXOffset"] = 0,
            ["text_fontType"] = "OUTLINE",
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
    ["cooldown"] = true,
    ["displayIcon"] = 135129,
    ["cooldownTextDisabled"] = false,
    ["anchorFrameType"] = "SCREEN",
    ["zoom"] = 0,
    ["frameStrata"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Enemy Range 20",
    ["useCooldownModRate"] = true,
    ["alpha"] = 1,
    ["width"] = 30,
    ["authorOptions"] = {
    },
    ["uid"] = "y9SKOBfsVYr",
    ["inverse"] = false,
    ["xOffset"] = 435.4865893554688,
    ["conditions"] = {
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "show",
                ["value"] = 0,
            },
            ["changes"] = {
                {
                    ["property"] = "alpha",
                },
            },
        },
        {
            ["check"] = {
                ["trigger"] = 1,
                ["variable"] = "show",
                ["value"] = 1,
            },
            ["changes"] = {
                {
                    ["value"] = 1,
                    ["property"] = "alpha",
                },
            },
        },
    },
    ["information"] = {
    },
    ["selfPoint"] = "CENTER",
}
}