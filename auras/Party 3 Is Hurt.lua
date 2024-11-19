return {
{
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["anchorFrameType"] = "SCREEN",
    ["cooldownSwipe"] = true,
    ["displayText"] = "%c",
    ["customTextUpdate"] = "update",
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
                ["debuffType"] = "HELPFUL",
                ["type"] = "custom",
                ["subeventSuffix"] = "_CAST_START",
                ["custom_type"] = "stateupdate",
                ["unit"] = "player",
                ["duration"] = "1",
                ["event"] = "Health",
                ["use_unit"] = true,
                ["unevent"] = "auto",
                ["subeventPrefix"] = "SPELL",
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
                ["spellIds"] = {
                },
                ["check"] = "update",
                ["names"] = {
                },
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
    ["xOffset"] = 525.3809971400667,
    ["useTooltip"] = true,
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
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["yOffset"] = -150.5749938964844,
    ["desaturate"] = false,
    ["conditions"] = {
    },
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
    },
    ["height"] = 30,
    ["automaticWidth"] = "Auto",
    ["load"] = {
        ["use_level"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["level_operator"] = {
            "~=",
        },
        ["use_spellknown"] = false,
        ["zoneIds"] = "",
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["use_never"] = false,
        ["level"] = {
            "120",
        },
        ["class"] = {
            ["single"] = "WARLOCK",
            ["multi"] = {
                ["WARLOCK"] = true,
            },
        },
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["icon"] = true,
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["cooldown"] = false,
    ["shadowXOffset"] = 1,
    ["internalVersion"] = 78,
    ["progressSource"] = {
        -1,
        "",
    },
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "BOTTOM",
    ["displayIcon"] = 136172,
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["uid"] = "hCrU8TLTAb)",
    ["useCooldownModRate"] = true,
    ["wordWrap"] = "WordWrap",
    ["cooldownTextDisabled"] = false,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Party 3 Is Hurt",
    ["justify"] = "RIGHT",
    ["alpha"] = 1,
    ["width"] = 30,
    ["zoom"] = 0,
    ["config"] = {
    },
    ["inverse"] = false,
    ["frameStrata"] = 1,
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
    ["color"] = {
        0.96470588235294,
        0.89803921568627,
        0.91764705882353,
        1,
    },
}
}