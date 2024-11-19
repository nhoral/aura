return {
{
    ["iconSource"] = 0,
    ["adjustedMax"] = "",
    ["adjustedMin"] = "",
    ["yOffset"] = -165.5399862670898,
    ["anchorPoint"] = "CENTER",
    ["cooldownSwipe"] = true,
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
                ["itemName"] = 0,
                ["names"] = {
                },
                ["use_messageType"] = false,
                ["use_genericShowOn"] = true,
                ["genericShowOn"] = "showOnCooldown",
                ["use_unit"] = true,
                ["use_ismoving"] = true,
                ["use_message"] = false,
                ["use_inverse"] = false,
                ["use_spec"] = true,
                ["spellIds"] = {
                },
                ["spellName"] = 5176,
                ["type"] = "custom",
                ["debuffType"] = "HELPFUL",
                ["instance_size"] = {
                },
                ["use_sourceName"] = false,
                ["use_itemName"] = true,
                ["subeventSuffix"] = "_CAST_START",
                ["use_moveSpeed"] = false,
                ["use_targetRequired"] = false,
                ["event"] = "Conditions",
                ["custom_type"] = "stateupdate",
                ["realSpellName"] = "Wrath",
                ["use_spellName"] = true,
                ["custom"] = "function(allstates)\n    if not UnitAffectingCombat(\"player\") then\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n        \n        return true\n    end\n    \n    local unit = \"target\"\n    \n    local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation(\"player\", unit)\n    local unitAffectingCombat = UnitAffectingCombat(unit)\n    \n    if isTanking or not unitAffectingCombat then\n        allstates[\"\"] = allstates[\"\"] or {show = true}\n        allstates[\"\"].show = true\n        allstates[\"\"].changed = true\n    else\n        allstates[\"\"] = allstates[\"\"] or {show = false}\n        allstates[\"\"].show = false\n        allstates[\"\"].changed = true\n    end\n    \n    return true\nend\n\n\n\n",
                ["subeventPrefix"] = "SPELL",
                ["check"] = "update",
                ["unit"] = "target",
                ["use_track"] = true,
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
    ["config"] = {
    },
    ["xOffset"] = 465.5664672851563,
    ["keepAspectRatio"] = false,
    ["useAdjustededMin"] = false,
    ["regionType"] = "icon",
    ["authorOptions"] = {
    },
    ["cooldown"] = false,
    ["displayIcon"] = "134074",
    ["preferToUpdate"] = false,
    ["zoom"] = 0,
    ["anchorFrameType"] = "SCREEN",
    ["cooldownTextDisabled"] = false,
    ["frameStrata"] = 1,
    ["tocversion"] = 11500,
    ["id"] = "Target Aggro",
    ["color"] = {
        1,
        1,
        1,
        1,
    },
    ["alpha"] = 1,
    ["width"] = 30,
    ["useCooldownModRate"] = true,
    ["uid"] = "nDm(m3oP2SZ",
    ["inverse"] = false,
    ["icon"] = true,
    ["conditions"] = {
    },
    ["information"] = {
    },
    ["selfPoint"] = "CENTER",
}
}