# player/attack/gun/bullet/attack_n_move
    ## 一応弾じゃなかった時
        execute if entity @s[tag=!bullet] run return run function system:log/error/add {error_id:"player.attack.bullet.not_bullet",error_info:"弾ではありません"}
    ## 処理
        ### データ
            data modify storage .:game tmp.UUID set from entity @s data.bullet.owner
            #### オーナー見つける
                execute as @e run function system:function/find_same_uuid/input with storage .:game tmp

            execute store result score $tmp global run data get entity @s data.bullet.bullet_speed
    ## 移動とダメージ
        function system:player/attack/gun/bullet/mcr_attack_n_move with entity @s data.bullet

    ## tidying
        scoreboard players add @s bullet_life_time 1
        kill @s[scores={bullet_life_time=20..}]
        tag @e remove same_uuid