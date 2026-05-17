# game/hotbar/sort
    ## キル数を保存して座標に
        execute store result storage .:game tmp.kill int 1.0 run scoreboard players get @s kill
        function system:game/hotbar/summon with storage .:game tmp

    ## 存在するプレイヤーの数だけ頭を出しておく
        execute if entity @e[tag=player_0] run item replace entity @e[tag=player] hotbar.8 with player_head
        execute if entity @e[tag=player_1] run item replace entity @e[tag=player] hotbar.7 with player_head
        execute if entity @e[tag=player_2] run item replace entity @e[tag=player] hotbar.6 with player_head
        execute if entity @e[tag=player_3] run item replace entity @e[tag=player] hotbar.5 with player_head