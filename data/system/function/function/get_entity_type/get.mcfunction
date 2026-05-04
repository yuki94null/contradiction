# get_entity_type/get
    ## if not riding
        $execute unless data storage .:system bool.$(is_riding) if entity @s run ride @n[tag=get_entity_data] mount @s

    ## get
        data modify storage .:function entity_type set from entity @s Passengers[{Tags:["get_entity_data"]}].id

    ## kill
        $execute unless data storage .:system bool.$(is_riding) run kill @s