local ADDON_NAME, ns = ...
ns.auras = ns.auras or {}
ns.auras["casting"] = {
    id = "Casting",
    uid = WeakAuras.GenerateUniqueID(),
    regionType = "icon",
    internalVersion = WeakAuras.InternalVersion(),
    iconSource = 0,
    color = { 1, 1, 1, 1 },
    yOffset = -135.564271,
    anchorPoint = "CENTER",
    cooldown = false,
    cooldownSwipe = false,
    cooldownEdge = false,
    cooldownTextDisabled = true,
    icon = true,
    triggers = {
        {
            trigger = {
                type = "unit",
                subeventSuffix = "_CAST_START",
                event = "Cast",
                subeventPrefix = "SPELL",
                spellIds = {},
                use_unit = true,
                unit = "player",
                names = {},
                debuffType = "HELPFUL"
            },
            untrigger = {}
        },
        activeTriggerMode = -10
    },
    load = {
        use_never = false,
        talent = { multi = {} },
        class = {
            single = "WARLOCK",
            multi = { ["WARLOCK"] = true }
        },
        spec = { multi = {} },
        size = { multi = {} }
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
    conditions = {
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 1
            },
            changes = {
                { property = "color" }
            }
        },
        {
            check = {
                trigger = 1,
                variable = "show",
                value = 0
            },
            changes = {
                {
                    value = { 1, 1, 1, 0 },
                    property = "color"
                }
            }
        }
    },
    displayIcon = 136099,
    width = 30,
    height = 30,
    frameStrata = 1,
    selfPoint = "CENTER",
    xOffset = 466.177770
}