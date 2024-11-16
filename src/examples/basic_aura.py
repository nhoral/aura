def create_basic_aura():
    return {
        "id": "MyFirstPythonAura",
        "regionType": "icon",
        "anchorPoint": "CENTER",
        "anchorFrameType": "SCREEN",
        "xOffset": 0,
        "yOffset": 0,
        "frameStrata": "MEDIUM",
        "trigger": {
            "type": "aura2",
            "subeventPrefix": "SPELL",
            "subeventSuffix": "_CAST_START",
            "spellIds": [12345],  # Replace with actual spell ID
            "unit": "player",
            "debuffType": "HELPFUL"
        },
        "load": {
            "class": {
                "multi": {
                    "MAGE": True
                }
            },
            "spec": {
                "multi": {}
            },
            "size": {
                "multi": {}
            }
        },
        "conditions": [],
        "information": {},
        "uid": "()mxCnkXGHEc",  # This should be generated uniquely
        "authorOptions": [],
        "preferToUpdate": False
    }
