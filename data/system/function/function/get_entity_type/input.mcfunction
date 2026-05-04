# get_entity_type/input
    ## init
        data remove storage .:function entity_type
        scoreboard players reset #tmp global

    ## if player
        execute if entity @s[type=player] run \
            return run \
                data modify storage .:function entity_type set value "minecraft:player"

    ## not player
        tag @s add get_entity_data

        ### if riding
            execute store success score #tmp global on vehicle if entity @s run \
                function system:function/get_entity_type/get {is_riding:true}
        
        ### other
            execute unless score #tmp global matches 1.. summon text_display run \
                function system:function/get_entity_type/get {is_riding:false}

    ## tidying
        tag @s remove get_entity_data