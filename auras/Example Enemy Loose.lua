return {
{
    ["sparkWidth"] = 10,
    ["sparkOffsetX"] = 0,
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = 0,
    ["anchorPoint"] = "CENTER",
    ["sparkRotation"] = 0,
    ["sparkRotationMode"] = "AUTO",
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
                ["type"] = "custom",
                ["subeventSuffix"] = "_CAST_START",
                ["event"] = "Health",
                ["subeventPrefix"] = "SPELL",
                ["custom"] = "function(allstates)\n    -- Throttle the check for perf?  What is config?\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        -- Set the last time\n        aura_env.last = GetTime()\n        \n        -- Start a count\n        local enemyIndex = 0\n        \n        -- Iterate 40 times\n        for i = 1, 40 do\n            -- Concat string with index\n            local unit = \"nameplate\"..i\n            local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n            \n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            \n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        \n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        \n        return true\n    end\nend",
                ["spellIds"] = {
                },
                ["custom_type"] = "stateupdate",
                ["check"] = "update",
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
    ["icon_color"] = {
        1,
        1,
        1,
        1,
    },
    ["enableGradient"] = false,
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
    ["barColor"] = {
        0,
        0,
        1,
        1,
    },
    ["desaturate"] = false,
    ["sparkOffsetY"] = 0,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
        {
            ["type"] = "subforeground",
        },
    },
    ["gradientOrientation"] = "HORIZONTAL",
    ["textureSource"] = "LSM",
    ["load"] = {
        ["size"] = {
            ["multi"] = {
            },
        },
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["class"] = {
            ["multi"] = {
            },
        },
        ["talent"] = {
            ["multi"] = {
            },
        },
    },
    ["sparkBlendMode"] = "ADD",
    ["useAdjustededMax"] = false,
    ["backgroundColor"] = {
        0,
        0,
        1,
        1,
    },
    ["iconSource"] = -1,
    ["barColor2"] = {
        0,
        0,
        1,
        1,
    },
    ["icon"] = false,
    ["selfPoint"] = "CENTER",
    ["useAdjustededMin"] = false,
    ["regionType"] = "aurabar",
    ["internalVersion"] = 78,
    ["height"] = 5,
    ["icon_side"] = "RIGHT",
    ["config"] = {
    },
    ["sparkHeight"] = 30,
    ["texture"] = "Solid",
    ["anchorFrameType"] = "SCREEN",
    ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
    ["spark"] = false,
    ["alpha"] = 1,
    ["sparkHidden"] = "NEVER",
    ["sparkColor"] = {
        1,
        1,
        1,
        1,
    },
    ["frameStrata"] = 1,
    ["width"] = 5,
    ["id"] = "Example Enemy Loose",
    ["uid"] = "SVG8Pdt0q3b",
    ["inverse"] = false,
    ["zoom"] = 0,
    ["orientation"] = "HORIZONTAL",
    ["conditions"] = {
    },
    ["information"] = {
    },
    ["xOffset"] = 0,
}
}