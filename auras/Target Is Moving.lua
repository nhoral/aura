return {
{
    ["outline"] = "OUTLINE",
    ["iconSource"] = -1,
    ["wagoID"] = "xPU0qj4Ap",
    ["authorOptions"] = {
    },
    ["preferToUpdate"] = false,
    ["adjustedMin"] = "",
    ["shadowYOffset"] = -1,
    ["anchorPoint"] = "CENTER",
    ["cooldownTextDisabled"] = false,
    ["cooldownSwipe"] = true,
    ["actions"] = {
        ["start"] = {
        },
        ["finish"] = {
        },
        ["init"] = {
        },
    },
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
                ["names"] = {
                },
                ["duration"] = "1",
                ["event"] = "Health",
                ["unit"] = "player",
                ["unevent"] = "auto",
                ["subeventPrefix"] = "SPELL",
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
                ["check"] = "update",
                ["use_unit"] = true,
                ["custom_hide"] = "timed",
                ["customVariables"] = "{}",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "all",
        ["activeTriggerMode"] = 1,
    },
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
    ["justify"] = "RIGHT",
    ["cooldown"] = false,
    ["displayIcon"] = 135788,
    ["desaturate"] = false,
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
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
        ["zoneIds"] = "",
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
        ["size"] = {
            ["multi"] = {
            },
        },
    },
    ["automaticWidth"] = "Auto",
    ["useAdjustededMax"] = false,
    ["fontSize"] = 13,
    ["source"] = "import",
    ["uid"] = "fYzi6AJVp9U",
    ["shadowXOffset"] = 1,
    ["fixedWidth"] = 200,
    ["anchorFrameType"] = "SCREEN",
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["adjustedMax"] = "",
    ["displayText"] = "%c",
    ["selfPoint"] = "BOTTOM",
    ["keepAspectRatio"] = false,
    ["zoom"] = 0,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Target Is Moving",
    ["color"] = {
        0.96470588235294,
        0.89803921568627,
        0.91764705882353,
        1,
    },
    ["useCooldownModRate"] = true,
    ["width"] = 30,
    ["xOffset"] = 645.0165893554688,
    ["config"] = {
    },
    ["inverse"] = false,
    ["yOffset"] = -150.6124938964844,
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["conditions"] = {
    },
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["wordWrap"] = "WordWrap",
}
}