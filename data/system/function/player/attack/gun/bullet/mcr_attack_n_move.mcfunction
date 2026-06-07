# player/attack/gun/bullet/attack_n_move
        execute unless block ~ ~ ~ #air run return run kill @s
    ## init
        tag @e remove bullet_hit
        tag @e remove bullet_hit_no_head

    
    ## 判定
        ### 判定
            execute as @e[nbt={Brain:{}},distance=..2] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0,dy=1,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] run tag @s[tag=!gun] add bullet_hit
        ### ヘッドじゃないやつ
            execute as @e[tag=bullet_hit] positioned ~ ~0.75 ~ positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0,dy=1,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] run tag @s add bullet_hit_no_head

        ### ヘッドがいたら音ならす
            execute if entity @n[tag=!same_uuid,tag=bullet_hit,tag=!bullet_hit_no_head] as @n[tag=same_uuid] at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush player @s ~ ~ ~ 1.0 0.5 0.0
            execute if entity @n[tag=!same_uuid,tag=bullet_hit,tag=!bullet_hit_no_head] as @n[tag=same_uuid] at @s run playsound entity.item.break player @s ~ ~ ~ 1.0 1.25 0.0

    ## ダメージを与える
        $execute as @e[tag=!same_uuid,tag=bullet_hit] run damage @s $(bullet_damage) player_attack by @n[tag=same_uuid]
        ### ヘッドはダメージ２倍
            $execute as @e[tag=!same_uuid,tag=bullet_hit,tag=!bullet_hit_no_head] run damage @s $(bullet_damage) player_attack by @n[tag=same_uuid]

    ## particle
        particle ash ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
        particle dust{color:[0.2f,0.2f,0.2f],scale:0.5} ~ ~ ~ 0.0 0.0 0.0 0 1 force @a

    ## tidying
        ## tag
            tag @s add already_attack_n_move
            tag @e remove bullet_hit
            tag @e remove bullet_hit_no_head
        ## score
            scoreboard players remove $tmp global 1
    ## 再帰
        $execute unless score $tmp global matches 1.. run return run tp @s ~ ~ ~ ~ ~$(fall_angle)
        execute positioned ^ ^ ^1.0 run function system:player/attack/gun/bullet/mcr_attack_n_move with entity @s data.bullet