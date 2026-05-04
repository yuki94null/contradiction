# game/start
    ## 人数が足りない
        execute store result score $PlayerCount global if entity @e[tag=Queue]
        execute if score $PlayerCount global matches ..1 run return run function system:log/error/add {ErrorID:"game.start.playershortage",ErrorInfo:"人数が足りず始められません"}
        execute if score $PlayerCount global matches 5.. run return run function system:log/error/add {ErrorID:"game.start.playerexcess",ErrorInfo:"人数が足りず始められません"}
    ## マップの要素数を取得してランダムする
        execute store result score #MapCount global run data get storage .:map Maps
        execute store result score #Random global run random value 1..1000000000
        execute store result storage .:map CurrentMap int 1.0 run scoreboard players operation #Random global %= #MapCount global

        ### マクロで選択
            function system:game/mcr_set_map with storage .:map
        
    ## プレイヤーをTP
        execute store result storage .:system Index int 1.0 run scoreboard players set #Tmp global 0
        execute as @n[sort=random,tag=Queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=Queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=Queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        execute as @n[sort=random,tag=Queue] unless function system:game/set_tag run function system:game/set_player_pos with storage .:system
        
        ### スポーン位置設定
            execute as @e[tag=Player] at @s run spawnpoint @s ~ ~ ~ ~ ~
    ## set
        data modify storage .:game Game.State set value true
        data modify storage .:game Game.LimitTime set value 60
        stopwatch create .:game