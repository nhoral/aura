return {
{
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["xOffset"] = 525.3809971400667,
    ["displayText"] = "%c",
    ["adjustedMin"] = "",
    ["yOffset"] = -150.5749938964844,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["automaticWidth"] = "Auto",
    ["icon"] = true,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["customVariables"] = "{}",
                ["type"] = "custom",
                ["custom_hide"] = "timed",
                ["subeventSuffix"] = "_CAST_START",
                ["names"] = {
                },
                ["duration"] = "1",
                ["event"] = "Health",
                ["unit"] = "player",
                ["unevent"] = "auto",
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local numGroup = GetNumGroupMembers()\n        if (numGroup < 4) then\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n        \n        local hp,hpMax = UnitHealth(\"party3\"),UnitHealthMax(\"party3\")\n        \n        if (math.ceil((hp / hpMax) * 100) <= 60 and not UnitIsDead(\"party3\")) then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
                ["subeventPrefix"] = "SPELL",
                ["check"] = "update",
                ["use_unit"] = true,
                ["custom_type"] = "stateupdate",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
                ["custom"] = "function()\n    return not aura_env.isTriggered\nend",
            },
        },
        ["disjunctive"] = "all",
        ["activeTriggerMode"] = 1,
    },
    ["wordWrap"] = "WordWrap",
    ["internalVersion"] = 78,
    ["progressSource"] = {
        -1,
        "",
    },
    ["selfPoint"] = "BOTTOM",
    ["authorOptions"] = {
    },
    ["adjustedMax"] = "",
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
        ["use_level"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["level_operator"] = {
            "~=",
        },
        ["use_spellknown"] = false,
        ["size"] = {
            ["multi"] = {
            },
        },
        ["class"] = {
            ["single"] = "WARLOCK",
            ["multi"] = {
                ["WARLOCK"] = true,
            },
        },
        ["use_never"] = false,
        ["level"] = {
            "120",
        },
        ["spec"] = {
            ["multi"] = {
            },
        },
        ["zoneIds"] = "",
    },
    ["cooldownEdge"] = false,
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["actions"] = {
        ["start"] = {
        },
        ["init"] = {
        },
        ["finish"] = {
        },
    },
    ["shadowXOffset"] = 1,
    ["color"] = {
        0.96470588235294,
        0.89803921568627,
        0.91764705882353,
        1,
    },
    ["useTooltip"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["keepAspectRatio"] = false,
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
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["fixedWidth"] = 200,
    ["frameStrata"] = 1,
    ["preferToUpdate"] = false,
    ["config"] = {
    },
    ["zoom"] = 0,
    ["cooldownTextDisabled"] = false,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Party 3 Is Hurt",
    ["width"] = 30,
    ["useCooldownModRate"] = true,
    ["anchorFrameType"] = "SCREEN",
    ["alpha"] = 1,
    ["uid"] = "hCrU8TLTAb)",
    ["inverse"] = false,
    ["justify"] = "RIGHT",
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["conditions"] = {
    },
    ["cooldown"] = false,
    ["displayIcon"] = 136172,
}
}