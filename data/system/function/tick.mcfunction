# tick
    ## time
        execute store result score $time global store result score time log run stopwatch query .:log 1.0

    ## interaction set
        function system:game/interaction/root

    ## as player
        execute as @a at @s run function system:player/tick

    ## game
        execute if data storage .:game game{state:true} run function system:game/tick with storage .:game game

    ## bullet
        execute store result score $tmp global if entity @e[tag=bullet]
        scoreboard players operation $tmp global -= $bullet_count_limit global
        execute if score $tmp global matches 1.. as @e[tag=bullet,tag=player_bullet,sort=arbitrary] run function system:player/attack/gun/bullet/too_many_to_kill
        execute if score $tmp global matches 1.. as @e[tag=bullet,tag=!player_bullet,sort=arbitrary] run function system:player/attack/gun/bullet/too_many_to_kill
        execute as @e[tag=bullet,tag=!already_attack_n_move] at @s run function system:player/attack/gun/bullet/attack_n_move
        ###
            tag @e remove already_attack_n_move

    ## 簡易サウンド すぐ消す
        function system:sound/tick