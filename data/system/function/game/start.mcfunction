# game/start
    ## 人数が足りない
        execute store result score $player_count global if entity @e[tag=queue]
        execute if score $player_count global matches ..1 run return run function system:log/error/add {error_id:"game.start.playershortage",error_info:"人数が足りず始められません"}
        execute if score $player_count global matches 5.. run return run function system:log/error/add {error_id:"game.start.playerexcess",error_info:"人数が足りず始められません"}
    ## マップの要素数を取得してランダムする
        execute store result score #map_count global run data get storage .:map maps
        execute store result score #random global run random value 1..1000000000
        execute store result storage .:map current_map int 1.0 run scoreboard players operation #random global %= #map_count global

        ### マクロで選択
            function system:game/mcr_set_map with storage .:map
        
    ## プレイヤーをtP
        execute store result storage .:system index int 1.0 run scoreboard players set #tmp global 0
        execute as @n[sort=random,tag=queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        
        ### スポーン位置設定
            execute as @e[tag=player] at @s run spawnpoint @s ~ ~ ~ ~ ~
            execute as @e[tag=player] at @s run attribute @s knockback_resistance base set 1.0
    ## set
        data modify storage .:game game.state set value true
        data modify storage .:game game.limit_time set value 60
        stopwatch create .:game