# get_entity_type/get
    ## if not riding
        $execute as $(State) if entity @s run ride @n[tag=GetEntityData] mount @s

    ## get
        data modify storage .:function EntityType set from entity @s Passengers[{Tags:["GetEntityData"]}].id

    ## kill
        $execute as $(State) run kill @s