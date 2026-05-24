# player/attack/melee/attack
    ## init
        tag @e remove bounding_cuboid
    ## 判定
        function km_bounding:cuboid/
        ### 自分を外す
            tag @s remove bounding_cuboid
        ### 近接のやつ外す
            tag @e[tag=bounding_cuboid,team=melee] remove bounding_cuboid
        
        ## ヒット時の処理
            execute if entity @e[tag=bounding_cuboid] run function system:player/attack/melee/hit
        ### 弾
            $execute as @e[tag=bounding_cuboid] run scoreboard players add @n[tag=attack_tmp] total_bullet_count $(add_bullet)
            function system:player/gun/clump

        ### ダメージ
            $execute as @e[tag=bounding_cuboid] run damage @s $(melee_damage) player_attack by @n[tag=attack_tmp]
        
    ## tidying
        ### set ct
            $scoreboard players set @s melee_ct $(melee_ct)