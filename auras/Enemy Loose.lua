return {
{
    ["iconSource"] = 0,
    ["wagoID"] = "ubUm8LJEP",
    ["color"] = {
        0.9921569228172302,
        1,
        0.988235354423523,
        1,
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -135.5600015258789,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["duration"] = "1",
                ["names"] = {
                },
                ["debuffType"] = "HELPFUL",
                ["type"] = "custom",
                ["unevent"] = "auto",
                ["subeventSuffix"] = "_CAST_START",
                ["subeventPrefix"] = "SPELL",
                ["event"] = "Health",
                ["customStacks"] = "function() return aura_env.count end\n",
                ["use_absorbMode"] = true,
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
                ["use_unit"] = true,
                ["check"] = "update",
                ["custom_type"] = "stateupdate",
                ["unit"] = "player",
                ["customVariables"] = "{\n  stacks = true,\n}",
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
    ["url"] = "",
    ["frameStrata"] = 1,
    ["authorOptions"] = {
    },
    ["stickyDuration"] = false,
    ["rotation"] = 0,
    ["selfPoint"] = "CENTER",
    ["version"] = 8,
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
            ["text_fontType"] = "OUTLINE",
            ["text_anchorPoint"] = "CENTER",
            ["text_fontSize"] = 24,
            ["anchorXOffset"] = 0,
            ["text_visible"] = true,
        },
    },
    ["height"] = 30,
    ["rotate"] = false,
    ["load"] = {
        ["use_never"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["zoneIds"] = "",
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["class"] = {
            ["single"] = "WARRIOR",
            ["multi"] = {
                ["WARRIOR"] = true,
            },
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["useAdjustededMax"] = false,
    ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
    ["source"] = "import",
    ["displayIcon"] = 134140,
    ["keepAspectRatio"] = false,
    ["xOffset"] = 435.5000447591146,
    ["mirror"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["uid"] = "EeOYElnJOLf",
    ["blendMode"] = "BLEND",
    ["preferToUpdate"] = false,
    ["width"] = 30,
    ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Squirrel",
    ["semver"] = "1.0.7",
    ["zoom"] = 0,
    ["auto"] = true,
    ["tocversion"] = 11500,
    ["id"] = "Enemy Loose",
    ["cooldownTextDisabled"] = false,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["useCooldownModRate"] = true,
    ["config"] = {
    },
    ["inverse"] = false,
    ["desaturate"] = false,
    ["conditions"] = {
    },
    ["cooldown"] = false,
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
            ["custom"] = "",
            ["do_custom"] = false,
        },
        ["finish"] = {
        },
    },
}
}