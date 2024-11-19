return {
{
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["xOffset"] = 585.0381399972098,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -150.5899938964844,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
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
                ["customVariables"] = "{}",
                ["type"] = "custom",
                ["custom_hide"] = "timed",
                ["custom_type"] = "stateupdate",
                ["use_unit"] = true,
                ["duration"] = "1",
                ["event"] = "Health",
                ["names"] = {
                },
                ["unevent"] = "auto",
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 2) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party1\"),UnitHealthMax(\"party1\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 70 and not UnitIsDead(\"party1\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n",
                ["spellIds"] = {
                },
                ["subeventPrefix"] = "SPELL",
                ["check"] = "update",
                ["unit"] = "player",
                ["subeventSuffix"] = "_CAST_START",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
                ["custom"] = "function()\n    return not aura_env.isTriggered\nend",
            },
        },
        ["disjunctive"] = "all",
        ["activeTriggerMode"] = 1,
    },
    ["useCooldownModRate"] = true,
    ["internalVersion"] = 78,
    ["progressSource"] = {
        -1,
        "",
    },
    ["wordWrap"] = "WordWrap",
    ["color"] = {
        0.96470588235294,
        0.89803921568627,
        0.91764705882353,
        1,
    },
    ["displayText"] = "%c",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["desaturate"] = false,
    ["shadowYOffset"] = -1,
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
        ["size"] = {
            ["multi"] = {
            },
        },
        ["level_operator"] = {
            "~=",
        },
        ["use_level"] = false,
        ["level"] = {
            "120",
        },
        ["class"] = {
            ["single"] = "WARLOCK",
            ["multi"] = {
                ["WARLOCK"] = true,
            },
        },
        ["zoneIds"] = "",
    },
    ["automaticWidth"] = "Auto",
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["icon"] = true,
    ["shadowXOffset"] = 1,
    ["useTooltip"] = true,
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "BOTTOM",
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["displayIcon"] = 135954,
    ["zoom"] = 0,
    ["authorOptions"] = {
    },
    ["config"] = {
    },
    ["semver"] = "1.0.0",
    ["width"] = 30,
    ["cooldownTextDisabled"] = false,
    ["justify"] = "RIGHT",
    ["tocversion"] = 11500,
    ["id"] = "Party 1 Is Hurt",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["fixedWidth"] = 200,
    ["uid"] = "xdNc3aDcOfl",
    ["inverse"] = false,
    ["animation"] = {
        ["start"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
        },
        ["main"] = {
            ["type"] = "none",
            ["easeType"] = "none",
            ["easeStrength"] = 3,
            ["preset"] = "alphaPulse",
            ["duration_type"] = "seconds",
        },
        ["finish"] = {
            ["type"] = "none",
            ["easeStrength"] = 3,
            ["duration_type"] = "seconds",
            ["easeType"] = "none",
        },
    },
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["conditions"] = {
    },
    ["cooldown"] = false,
    ["preferToUpdate"] = false,
}
}