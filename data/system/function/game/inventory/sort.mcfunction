# game/inventory/sort
    ## キル数を保存して座標に
        execute store result storage .:game tmp.kill int 1.0 run scoreboard players get @s kill
        function system:game/inventory/summon with storage .:game tmp

    ## 存在するプレイヤーの数だけ頭を出しておく
        item replace entity @e[tag=player] hotbar.8 with player_head
        item replace entity @e[tag=player] hotbar.7 with player_head
        item replace entity @e[tag=player] hotbar.6 with player_head
        item replace entity @e[tag=player] hotbar.5 with player_head
        
        # execute unless entity @e[tag=player_0] run item replace entity @e hotbar.8 with air
        # execute unless entity @e[tag=player_1] run item replace entity @e hotbar.7 with air

        item replace entity @s[tag=!player] hotbar.8 with air
        item replace entity @s[tag=!player] hotbar.7 with air
        item replace entity @s[tag=!player] hotbar.6 with air
        item replace entity @s[tag=!player] hotbar.5 with air
        
        execute unless entity @e[tag=player_2] run item replace entity @e hotbar.6 with air
        execute unless entity @e[tag=player_3] run item replace entity @e hotbar.5 with air