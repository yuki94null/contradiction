# game/interaction/summon
    ## decrement
        execute as @e[tag=interaction] store result entity @s data.time int 0.9999999999 run data get entity @s data.time
    ## kill
        kill @e[tag=interaction,nbt={data:{time:0}}]
    ## tp
        tp @n[tag=interaction_0] @n[tag=player_0]
        tp @n[tag=interaction_1] @n[tag=player_1]
        tp @n[tag=interaction_2] @n[tag=player_2]
        tp @n[tag=interaction_3] @n[tag=player_3]
    ## summon
        execute if entity @n[tag=player_0] run summon interaction 0 100000 0 {Tags:[interaction,interaction_0],width:10,height:10,data:{time:3}}
        execute if entity @n[tag=player_1] run summon interaction 0 100000 0 {Tags:[interaction,interaction_1],width:10,height:10,data:{time:3}}
        execute if entity @n[tag=player_2] run summon interaction 0 100000 0 {Tags:[interaction,interaction_2],width:10,height:10,data:{time:3}}
        execute if entity @n[tag=player_3] run summon interaction 0 100000 0 {Tags:[interaction,interaction_3],width:10,height:10,data:{time:3}}