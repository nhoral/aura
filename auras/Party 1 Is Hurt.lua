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
    ["displayText"] = "%c",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["anchorFrameType"] = "SCREEN",
    ["cooldownSwipe"] = true,
    ["useTooltip"] = true,
    ["customTextUpdate"] = "update",
    ["automaticWidth"] = "Auto",
    ["icon"] = true,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["debuffType"] = "HELPFUL",
                ["type"] = "custom",
                ["custom_type"] = "stateupdate",
                ["subeventSuffix"] = "_CAST_START",
                ["names"] = {
                },
                ["duration"] = "1",
                ["event"] = "Health",
                ["unit"] = "player",
                ["unevent"] = "auto",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
                ["check"] = "update",
                ["use_unit"] = true,
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
    ["xOffset"] = 585.0381399972098,
    ["internalVersion"] = 78,
    ["keepAspectRatio"] = false,
    ["selfPoint"] = "BOTTOM",
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["yOffset"] = -150.5899938964844,
    ["desaturate"] = false,
    ["authorOptions"] = {
    },
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
    },
    ["height"] = 30,
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["load"] = {
        ["use_never"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["use_spellknown"] = false,
        ["zoneIds"] = "",
        ["class"] = {
            ["single"] = "WARLOCK",
            ["multi"] = {
                ["WARLOCK"] = true,
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
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["cooldown"] = false,
    ["shadowXOffset"] = 1,
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
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["conditions"] = {
    },
    ["adjustedMax"] = "",
    ["uid"] = "xdNc3aDcOfl",
    ["wordWrap"] = "WordWrap",
    ["frameStrata"] = 1,
    ["useCooldownModRate"] = true,
    ["cooldownTextDisabled"] = false,
    ["justify"] = "RIGHT",
    ["tocversion"] = 11500,
    ["id"] = "Party 1 Is Hurt",
    ["fixedWidth"] = 200,
    ["alpha"] = 1,
    ["width"] = 30,
    ["semver"] = "1.0.0",
    ["config"] = {
    },
    ["inverse"] = false,
    ["zoom"] = 0,
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["displayIcon"] = 135954,
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["cooldownEdge"] = false,
}
}