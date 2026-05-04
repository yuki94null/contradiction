# get_entity_type/input
    ## init
        data remove storage .:function EntityType
        scoreboard players reset #Tmp global

    ## if player
        execute if entity @s[type=player] run \
            return run \
                data modify storage .:function EntityType set value "minecraft:player"

    ## not player
        tag @s add GetEntityData

        ### if riding
            execute store success score #Tmp global on vehicle if entity @s run \
                function system:function/get_entity_type/get {isRiding:true}
        
        ### other
            execute unless score #Tmp global matches 1.. summon text_display run \
                function system:function/get_entity_type/get {isRiding:false}

    ## tidying
        tag @s remove GetEntityData