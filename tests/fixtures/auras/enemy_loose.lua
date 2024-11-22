local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["enemy_loose"] = {
    id = "Enemy Loose",
    uid = WeakAuras.GenerateUniqueID(),
    regionType = "icon",
    internalVersion = WeakAuras.InternalVersion(),
    iconSource = 0,
    color = { 0.992156922, 1, 0.988235354, 1 },
    yOffset = -135.560001,
    anchorPoint = "CENTER",
    cooldown = false,
    cooldownSwipe = false,
    cooldownEdge = false,
    cooldownTextDisabled = true,
    icon = true,
    triggers = {
        {
            trigger = {
                duration = "1",
                names = {},
                debuffType = "HELPFUL",
                type = "custom",
                unevent = "auto",
                subeventSuffix = "_CAST_START",
                unit = "player",
                event = "Health",
                customStacks = "function() return aura_env.count end\n",
                custom_type = "stateupdate",
                custom = "function(allstates)\n    if not aura_env.last or GetTime() - aura_env.last > 0.2 then\n        aura_env.last = GetTime()\n        local enemyIndex = 0\n        for i = 1, 40 do\n            local unit = \"nameplate\"..i\n            local isTanking = UnitDetailedThreatSituation(\"player\", unit)\n            local unitCanAttack = UnitCanAttack(\"player\", unit)\n            local unitAffectingCombat = UnitAffectingCombat(unit)\n            if unitCanAttack and unitAffectingCombat and not isTanking then\n                enemyIndex = enemyIndex + 1\n            end\n        end\n        if enemyIndex > 0 then\n            allstates[\"\"] = allstates[\"\"] or {show = true}\n            allstates[\"\"].show = true\n            allstates[\"\"].changed = true\n        else\n            allstates[\"\"] = allstates[\"\"] or {show = false}\n            allstates[\"\"].show = false\n            allstates[\"\"].changed = true\n        end\n        return true\n    end\nend",
                spellIds = {},
                use_unit = true,
                check = "update",
                use_absorbMode = true,
                subeventPrefix = "SPELL",
                customVariables = "{\n  stacks = true,\n}"
            },
            untrigger = {}
        },
        activeTriggerMode = -10
    },
    load = {
        use_never = false,
        talent = { multi = {} },
        size = { multi = {} },
        spec = { multi = {} },
        class = {
            single = "WARRIOR",
            multi = { ["WARRIOR"] = true }
        },
        zoneIds = ""
    },
    animation = {
        start = {
            easeStrength = 3,
            type = "none",
            duration_type = "seconds",
            easeType = "none"
        },
        main = {
            easeStrength = 3,
            type = "none",
            duration_type = "seconds",
            easeType = "none"
        },
        finish = {
            easeStrength = 3,
            type = "none",
            duration_type = "seconds",
            easeType = "none"
        }
    },
    conditions = {},
    config = {},
    displayIcon = 134140,
    information = {
        forceEvents = true,
        ignoreOptionsEventErrors = true
    },
    width = 30,
    height = 30,
    frameStrata = 1,
    selfPoint = "CENTER",
    xOffset = 435.500044,
    zoom = 0,
    subRegions = {
        { type = "subbackground" },
        {
            text_shadowXOffset = 0,
            text_text = "%s",
            text_shadowColor = { 0, 0, 0, 1 },
            text_selfPoint = "AUTO",
            text_automaticWidth = "Auto",
            text_fixedWidth = 64,
            text_justify = "CENTER",
            rotateText = "NONE",
            type = "subtext",
            text_color = { 1, 1, 1, 1 },
            text_font = "Friz Quadrata TT",
            text_shadowYOffset = 0,
            text_wordWrap = "WordWrap",
            text_fontType = "OUTLINE",
            text_anchorPoint = "CENTER",
            text_fontSize = 24,
            text_visible = true
        }
    }
}