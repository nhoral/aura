WeakAurasSaved = {
    ["dynamicIconCache"] = {},
    ["editor_tab_spaces"] = 4,
    ["displays"] = {
        ["Example"] = {
            ["sparkWidth"] = 10,
            ["iconSource"] = -1,
            ["xOffset"] = 0,
            ["adjustedMax"] = "",
            ["adjustedMin"] = "",
            ["yOffset"] = 0,
            ["anchorPoint"] = "CENTER",
            ["sparkRotation"] = 0,
            ["sparkRotationMode"] = "AUTO",
            ["icon"] = false,
            ["triggers"] = {
                {
                    ["trigger"] = {
                        ["type"] = "custom",
                        ["subeventSuffix"] = "_CAST_START",
                        ["event"] = "Health",
                        ["subeventPrefix"] = "SPELL",
                        ["custom"] = [[
                            function(allstates)
                                -- Throttle the check for perf?  What is config?
                                if not aura_env.last or GetTime() - aura_env.last > 0.2 then
                                    -- Set the last time
                                    aura_env.last = GetTime()
                                    
                                    -- Start a count
                                    local enemyIndex = 0
                                    
                                    -- Iterate 40 times
                                    for i = 1, 40 do
                                        -- Concat string with index
                                        local unit = "nameplate"..i
                                        local isTanking, status, threatpct, rawthreatpct, threatvalue = UnitDetailedThreatSituation("player", unit)
                                        
                                        local unitCanAttack = UnitCanAttack("player", unit)
                                        local unitAffectingCombat = UnitAffectingCombat(unit)
                                        
                                        if unitCanAttack and unitAffectingCombat and not isTanking then
                                            enemyIndex = enemyIndex + 1
                                        end
                                    end
                                    
                                    if enemyIndex > 0 then
                                        allstates[""] = allstates[""] or {show = true}
                                        allstates[""].show = true
                                        allstates[""].changed = true
                                    else
                                        allstates[""] = allstates[""] or {show = false}
                                        allstates[""].show = false
                                        allstates[""].changed = true
                                    end
                                    
                                    return true
                                end
                            end
                        ]],
                        ["spellIds"] = {},
                        ["custom_type"] = "stateupdate",
                        ["check"] = "update",
                        ["names"] = {},
                        ["unit"] = "player",
                        ["debuffType"] = "HELPFUL",
                    },
                    ["untrigger"] = {},
                },
                ["activeTriggerMode"] = -10,
            },
            ["icon_color"] = {1, 1, 1, 1},
            ["internalVersion"] = 78,
            ["progressSource"] = {-1, ""},
            ["selfPoint"] = "CENTER",
            ["barColor"] = {0, 0, 1, 1},
            ["desaturate"] = false,
            ["sparkOffsetY"] = 0,
            ["subRegions"] = {
                {["type"] = "subbackground"},
                {["type"] = "subforeground"},
            },
            ["height"] = 5,
            ["textureSource"] = "LSM",
            ["load"] = {
                ["size"] = {["multi"] = {}},
                ["spec"] = {["multi"] = {}},
                ["class"] = {["multi"] = {}},
                ["talent"] = {["multi"] = {}},
            },
            ["sparkBlendMode"] = "ADD",
            ["useAdjustededMax"] = false,
            ["anchorFrameType"] = "SCREEN",
            ["gradientOrientation"] = "HORIZONTAL",
            ["barColor2"] = {0, 0, 1, 1},
            ["backgroundColor"] = {0, 0, 1, 1},
            ["actions"] = {
                ["start"] = {},
                ["init"] = {},
                ["finish"] = {},
            },
            ["useAdjustededMin"] = false,
            ["regionType"] = "aurabar",
            ["sparkOffsetX"] = 0,
            ["config"] = {},
            ["icon_side"] = "RIGHT",
            ["sparkColor"] = {1, 1, 1, 1},
            ["sparkHeight"] = 30,
            ["texture"] = "Solid",
            ["sparkHidden"] = "NEVER",
            ["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
            ["spark"] = false,
            ["frameStrata"] = 1,
            ["id"] = "Example",
            ["zoom"] = 0,
            ["alpha"] = 1,
            ["width"] = 5,
            ["authorOptions"] = {},
            ["uid"] = "h1a5CgYmVfM",
            ["inverse"] = false,
            ["enableGradient"] = false,
            ["orientation"] = "HORIZONTAL",
            ["conditions"] = {},
            ["information"] = {},
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
        },
    },
    ["lastArchiveClear"] = 1731875657,
    ["minimap"] = {
        ["hide"] = false,
    },
    ["historyCutoff"] = 730,
    ["dbVersion"] = 78,
    ["migrationCutoff"] = 730,
    ["features"] = {},
    ["registered"] = {},
    ["editor_font_size"] = 12,
    ["login_squelch_time"] = 10,
    ["editor_theme"] = "Monokai",
}