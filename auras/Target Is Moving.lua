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
    ["cooldownSwipe"] = true,
    ["customTextUpdate"] = "update",
    ["cooldownEdge"] = false,
    ["icon"] = true,
    ["triggers"] = {
        {
            ["trigger"] = {
                ["customVariables"] = "{}",
                ["type"] = "custom",
                ["custom_hide"] = "timed",
                ["subeventSuffix"] = "_CAST_START",
                ["unit"] = "player",
                ["duration"] = "1",
                ["event"] = "Health",
                ["use_unit"] = true,
                ["unevent"] = "auto",
                ["spellIds"] = {
                },
                ["custom"] = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.5 then\n        aura_env.last = GetTime()\n        \n        local unitSpeed, _, _, _ = GetUnitSpeed(\"target\")           \n        if not unitSpeed then return end\n        \n        if unitSpeed > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].changed = true\n            return true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n            return true\n        end\n    end\nend\n\n\n\n",
                ["subeventPrefix"] = "SPELL",
                ["check"] = "update",
                ["names"] = {
                },
                ["custom_type"] = "stateupdate",
                ["debuffType"] = "HELPFUL",
            },
            ["untrigger"] = {
            },
        },
        ["disjunctive"] = "all",
        ["activeTriggerMode"] = 1,
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
    ["adjustedMax"] = "",
    ["customText"] = "function()\n    if not UnitClass(\"target\")  then return end\n    local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n    local cc,_,_,_ = GetUnitSpeed(\"target\")           \n    if not col or not cc then return end\n    \n    cc= string.format('%.0f',cc*100/BASE_MOVEMENT_SPEED)    \n    \n    if aura_env.config.n then \n        local m=GetUnitName('target')\n        return WrapTextInColorCode(m, col) ..cc    \n    else\n        return WrapTextInColorCode(cc, col) \n    end\nend\n--local col = RAID_CLASS_COLORS[select(2, UnitClass(\"target\"))].colorStr    \n--WrapTextInColorCode(cc, col) \n\n\n",
    ["desaturate"] = false,
    ["yOffset"] = -150.6124938964844,
    ["font"] = "聊天",
    ["version"] = 1,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
    },
    ["height"] = 30,
    ["zoom"] = 0,
    ["load"] = {
        ["use_level"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["level_operator"] = {
            "~=",
        },
        ["size"] = {
            ["multi"] = {
            },
        },
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
        ["zoneIds"] = "",
    },
    ["automaticWidth"] = "Auto",
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
    ["xOffset"] = 645.0165893554688,
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["selfPoint"] = "BOTTOM",
    ["information"] = {
        ["forceEvents"] = true,
        ["ignoreOptionsEventErrors"] = true,
    },
    ["conditions"] = {
    },
    ["displayText"] = "%c",
    ["config"] = {
    },
    ["width"] = 30,
    ["useCooldownModRate"] = true,
    ["cooldownTextDisabled"] = false,
    ["semver"] = "1.0.0",
    ["tocversion"] = 11500,
    ["id"] = "Target Is Moving",
    ["frameStrata"] = 1,
    ["alpha"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["fixedWidth"] = 200,
    ["uid"] = "fYzi6AJVp9U",
    ["inverse"] = false,
    ["url"] = "https://wago.io/xPU0qj4Ap/1",
    ["shadowColor"] = {
        0,
        0,
        0,
        1,
    },
    ["displayIcon"] = 135788,
    ["cooldown"] = false,
    ["justify"] = "RIGHT",
}
}