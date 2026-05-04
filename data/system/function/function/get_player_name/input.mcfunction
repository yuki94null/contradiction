# function/get_player_name/input
    ## init
        data remove storage .:function player_name

    ## if not player
        execute if entity @s[type=!player] run \
            return run \
                function system:log/error/add {error_id:"function.get_player_name.not_player",error_info:""}

    ## 
        loot spawn ~ ~-100000 ~ loot system:get_player_head

        execute positioned ~ ~-100000 ~ run \
            data modify storage .:function player_name set from \
                entity @n[type=item,distance=..0.1] Item.components."minecraft:profile".name

        execute positioned ~ ~-100000 ~ run \
            kill @n[type=item,distance=..0.1]