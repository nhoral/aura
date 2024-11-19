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
                ["unit"] = "player",
                ["event"] = "Health",
                ["customStacks"] = "function() return aura_env.count end\n",
                ["custom_type"] = "stateupdate",
                ["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
                ["spellIds"] = {
                },
                ["use_unit"] = true,
                ["check"] = "update",
                ["use_absorbMode"] = true,
                ["subeventPrefix"] = "SPELL",
                ["customVariables"] = "{\n  stacks = true,\n}",
            },
            ["untrigger"] = {
            },
        },
        ["activeTriggerMode"] = -10,
    },
    ["zoom"] = 0,
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
    ["alpha"] = 1,
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
            ["custom"] = "",
            ["do_custom"] = false,
        },
    },
    ["authorOptions"] = {
    },
    ["stickyDuration"] = false,
    ["rotation"] = 0,
    ["cooldown"] = false,
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
        ["size"] = {
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
                ["WARRIOR"] = true,
            },
        },
        ["zoneIds"] = "",
    },
    ["conditions"] = {
    },
    ["useAdjustededMax"] = false,
    ["textureWrapMode"] = "CLAMPTOBLACKADDITIVE",
    ["source"] = "import",
    ["desaturate"] = false,
    ["config"] = {
    },
    ["mirror"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["xOffset"] = 435.5000447591146,
    ["blendMode"] = "BLEND",
    ["anchorFrameType"] = "SCREEN",
    ["useCooldownModRate"] = true,
    ["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_Squirrel",
    ["auto"] = true,
    ["cooldownTextDisabled"] = false,
    ["semver"] = "1.0.7",
    ["tocversion"] = 11500,
    ["id"] = "Enemy Loose",
    ["url"] = "",
    ["frameStrata"] = 1,
    ["width"] = 30,
    ["preferToUpdate"] = false,
    ["uid"] = "EeOYElnJOLf",
    ["inverse"] = false,
    ["keepAspectRatio"] = false,
    ["displayIcon"] = 134140,
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["selfPoint"] = "CENTER",
}
}