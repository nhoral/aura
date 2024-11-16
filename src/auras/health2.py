def create_health2_aura():
    return {
        # Basic identification
        "id": "Health2",
        "regionType": "aurabar",
        "sparkWidth": 10,
        "iconSource": -1,
        "xOffset": 321.6004638671875,
        "yOffset": -159.5994262695313,  # 20 pixels lower than Health
        
        # Missing properties
        "adjustedMax": "",
        "adjustedMin": "",
        "text": False,
        "desaturate": False,
        "internalVersion": 78,
        "sparkOffsetY": 0,
        "sparkOffsetX": 0,
        "useAdjustededMax": False,
        "useAdjustededMin": False,
        "gradientOrientation": "HORIZONTAL",
        "barColor2": [1, 1, 0, 1],
        "selfPoint": "CENTER",
        "authorOptions": {},
        "sparkColor": [1, 1, 1, 1],
        "icon_side": "RIGHT",
        "zoom": 0,
        "inverse": False,
        "config": {},
        "orientation": "HORIZONTAL",
        "conditions": {},
        "information": {},
        "actions": {
            "start": {},
            "init": {},
            "finish": {},
        },

        # Standard properties
        "anchorPoint": "CENTER",
        "sparkRotation": 0,
        "sparkRotationMode": "AUTO",
        "icon": False,
        "triggers": {
            1: {
                "trigger": {
                    "use_showAbsorb": True,
                    "type": "unit",
                    "subeventSuffix": "_CAST_START",
                    "use_absorbMode": True,
                    "event": "Health",
                    "subeventPrefix": "SPELL",
                    "use_showIncomingHeal": True,
                    "spellIds": {},
                    "use_unit": True,
                    "names": {},
                    "unit": "player",
                    "debuffType": "HELPFUL",
                },
                "untrigger": {},
            },
            "activeTriggerMode": -10
        },
        "icon_color": [1, 1, 1, 1],
        "enableGradient": False,
        "progressSource": [-1, ""],
        "animation": {
            "start": {
                "type": "none",
                "easeStrength": 3,
                "duration_type": "seconds",
                "easeType": "none",
            },
            "main": {
                "type": "none",
                "easeStrength": 3,
                "duration_type": "seconds",
                "easeType": "none",
            },
            "finish": {
                "type": "none",
                "easeStrength": 3,
                "duration_type": "seconds",
                "easeType": "none",
            },
        },
        "barColor": [0, 0, 1, 1],  # Blue color
        "height": 20,
        "width": 20,
        "load": {
            "size": {"multi": {}},
            "spec": {"multi": {}},
            "class": {"multi": {}},
            "talent": {"multi": {}},
        },
        "textureSource": "LSM",
        "sparkBlendMode": "ADD",
        "sparkTexture": "Interface\\CastingBar\\UI-CastingBar-Spark",
        "texture": "Blizzard",
        "uid": "345WbRL7y2Q",  # Different UID from Health
        "frameStrata": 1,
        "anchorFrameType": "SCREEN",
        "spark": False,
        "sparkHeight": 30,
        "sparkHidden": "NEVER",
        "alpha": 1,
        "backgroundColor": [0, 0, 0, 0.5],
        "smoothProgress": True,
        "subRegions": [
            {"type": "subforeground"},
            {"type": "subbackground"},
        ],
    }