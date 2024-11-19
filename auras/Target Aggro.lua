return {
{
    ["iconSource"] = 0,
    ["xOffset"] = 465.5664672851563,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -165.5399862670898,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
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
                ["itemName"] = 0,
                ["use_unit"] = true,
                ["use_track"] = true,
                ["use_genericShowOn"] = true,
                ["genericShowOn"] = "showOnCooldown",
                ["names"] = {
                },
                ["unit"] = "target",
                ["check"] = "update",
                ["subeventPrefix"] = "SPELL",
                ["use_spec"] = true,
                ["custom"] = "function(allstates)\n    if not UnitAffectingCombat(\"player\") then\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n        \n        return true\n    end\n    \n    local unit = \"target\"\n    \n    local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n    local unitAffectingCombat = UnitAffectingCombat(unit)\n    \n    if isTanking or not unitAffectingCombat then\n        allstates[\"\"] = allstates[\"\"] or {show = true}\n        allstates[\"\"].show = true\n        allstates[\"\"].changed = true\n    else\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n    end\n    \n    return true\nend\n\n\n\n",
                ["debuffType"] = "HELPFUL",
                ["use_sourceName"] = false,
                ["spellName"] = 5176,
                ["instance_size"] = {
                },
                ["type"] = "custom",
                ["custom_type"] = "stateupdate",
                ["subeventSuffix"] = "_CAST_START",
                ["event"] = "Conditions",
                ["use_targetRequired"] = false,
                ["use_itemName"] = true,
                ["use_moveSpeed"] = false,
                ["realSpellName"] = "Wrath",
                ["use_spellName"] = true,
                ["spellIds"] = {
                },
                ["use_inverse"] = false,
                ["use_ismoving"] = true,
                ["use_message"] = false,
                ["use_messageType"] = false,
                ["customVariables"] = "{}",
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
    ["desaturate"] = false,
    ["subRegions"] = {
        {
            ["type"] = "subbackground",
        },
    },
    ["height"] = 30,
    ["load"] = {
        ["use_never"] = false,
        ["talent"] = {
            ["multi"] = {
            },
        },
        ["class"] = {
            ["multi"] = {
            },
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
    ["useAdjustededMax"] = false,
    ["source"] = "import",
    ["cooldownTextDisabled"] = false,
    ["icon"] = true,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["authorOptions"] = {
    },
    ["selfPoint"] = "CENTER",
    ["information"] = {
    },
    ["conditions"] = {
    },
    ["uid"] = "nDm(m3oP2SZ",
    ["useCooldownModRate"] = true,
    ["zoom"] = 0,
    ["width"] = 30,
    ["tocversion"] = 11500,
    ["id"] = "Target Aggro",
    ["alpha"] = 1,
    ["frameStrata"] = 1,
    ["anchorFrameType"] = "SCREEN",
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["config"] = {
    },
    ["inverse"] = false,
    ["preferToUpdate"] = false,
    ["displayIcon"] = "134074",
    ["cooldown"] = false,
    ["keepAspectRatio"] = false,
}
}