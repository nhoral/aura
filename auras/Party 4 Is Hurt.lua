return {
{
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["color"] = {
        0.96470588235294,
        0.89803921568627,
        0.91764705882353,
        1,
    },
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["debuffType"] = "HELPFUL",
                ["type"] = "custom",
                ["custom_type"] = "stateupdate",
                ["subeventSuffix"] = "_CAST_START",
                ["use_unit"] = true,
                ["duration"] = "1",
                ["event"] = "Health",
                ["names"] = {
                },
                ["unevent"] = "auto",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 5) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].s5how = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party4\"),UnitHealthMax(\"party4\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party4\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
                ["check"] = "update",
                ["unit"] = "player",
                ["custom_hide"] = "timed",
                ["customVariables"] = "{}",
            },
            ["untrigger"] = {
                ["custom"] = "function()\n    return not aura_env.isTriggered\nend",
            },
        },
        ["disjunctive"] = "all",
        ["activeTriggerMode"] = 1,
    },
    ["wordWrap"] = "WordWrap",
    ["useTooltip"] = true,
    ["progressSource"] = {
        -1,
        "",
    },
    ["selfPoint"] = "BOTTOM",
    ["authorOptions"] = {
    },
    ["displayText"] = "%c",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["desaturate"] = false,
    ["yOffset"] = -150.5692246657152,
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
    },
    ["height"] = 30,
    ["alpha"] = 1,
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
        ["use_spellknown"] = false,
        ["zoneIds"] = "",
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["use_level"] = false,
        ["level"] = {
            "120",
        },
        ["level_operator"] = {
            "~=",
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["automaticWidth"] = "Auto",
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["shadowXOffset"] = 1,
    ["cooldown"] = false,
    ["internalVersion"] = 78,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["keepAspectRatio"] = false,
    ["animation"] = {
        ["start"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
        },
        ["main"] = {
            ["type"] = "none",
            ["easeType"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["preset"] = "alphaPulse",
        },
        ["finish"] = {
            ["easeStrength"] = 3,
            ["type"] = "none",
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
        },
    },
    ["conditions"] = {
    },
    ["semver"] = "1.0.0",
    ["xOffset"] = 495.3808750697547,
    ["uid"] = "FhlmFnl7cvf",
    ["displayIcon"] = 136220,
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["justify"] = "RIGHT",
    ["tocversion"] = 11500,
    ["id"] = "Party 4 Is Hurt",
    ["frameStrata"] = 1,
    ["useCooldownModRate"] = true,
    ["width"] = 30,
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["preferToUpdate"] = false,
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["fixedWidth"] = 200,
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
}
}