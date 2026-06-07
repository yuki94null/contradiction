# item/mcr_weapon

$loot $(pass) loot {\
    "pools": [\
        {\
            "rolls": 1.0,\
            "entries": [\
                {\
                    "type": "item",\
                    "name": "command_block",\
                    "functions": [\
                        {\
                            "function": "set_components",\
                            "components": {\
                                "item_model": "system:$(type)/$(kinds)",\
                                "item_name": [\
                                    {\
                                    "translate": "$(loadout)","color":"$(color)"\
                                    },\
                                    {\
                                    "text": " - ","color":"$(color)"\
                                    },\
                                    {\
                                        "translate": "$(type)","color":"$(color)"\
                                    },\
                                    {\
                                        "text": " : ","color":"$(color)"\
                                    },\
                                    {\
                                        "translate": "$(kinds)","color":"green"\
                                    }\
                            ],\
                                "lore": [\
                                    {\
                                        "translate": "weapon.lore",\
                                        "color": "white",\
                                        "italic": false,\
                                        "with": [\
                                            {"translate": "$(loadout)","color":"gold"  },\
                                            {"translate": "$(type)"     ,"color":"$(color)"},\
                                            {"translate": "$(kinds)"    ,"color":"green" }\
                                        ]\
                                    },\
                                    {\
                                        "translate": "$(kinds).lore.0",\
                                        "color": "white",\
                                        "italic": false\
                                    },\
                                    {\
                                        "translate": "$(kinds).lore.1",\
                                        "color": "white",\
                                        "italic": false\
                                    },\
                                    {\
                                        "text": ""\
                                    },\
                                    {\
                                        "translate": "$(type).lore",\
                                        "color": "white",\
                                        "italic": false,\
                                        "with": [\
                                            $(lore)\
                                        ]\
                                    }\
                                ],\
                                "minecraft:custom_data":{\
                                    "weapon": {\
                                        "type": "$(type)",\
                                        "kinds": "$(kinds)"\
                                    }\
                                },\
                                "attribute_modifiers": [\
                                    {\
                                        "id": ".:system",\
                                        "amount": -1.0,\
                                        "operation": "add_multiplied_total",\
                                        "type": "block_interaction_range",\
                                        "display":  {\
                                            "type": "hidden"\
                                        },\
                                        "slot": "hand"\
                                    }\
                                ],\
                                "swing_animation": {\
                                    "duration": $(ct),\
                                    "type": "$(swing_type)"\
                                }\
                            }\
                        }\
                    ]\
                }\
            ]\
        }\
    ]\
}