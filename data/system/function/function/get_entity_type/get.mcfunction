# get_entity_type/get
    ## if not riding
        $execute unless data storage .:system Bool.$(isRiding) if entity @s run ride @n[tag=GetEntityData] mount @s

    ## get
        data modify storage .:function EntityType set from entity @s Passengers[{Tags:["GetEntityData"]}].id

    ## kill
        $execute unless data storage .:system Bool.$(isRiding) run kill @s