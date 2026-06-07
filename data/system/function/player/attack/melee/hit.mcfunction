# player/attack/melee/hit

    ## 選択してるやつを取得
        function system:player/get_selected with entity @s
    ## スキル名からデータを取得
        function system:player/skill/mcr_set_data with storage .:system tmp
    ## クールタイムの設定
        execute store result score $tmp global run data get storage .:system tmp.skill.max_charge

    ## スコア
        $execute \
            unless score @s skill_charge >= $tmp global \
            if score @s skill_ct matches 1.. \
            as @e[tag=bounding_cuboid] run scoreboard players add @n[tag=attack_tmp] skill_ct $(ct_boost)

        $execute as @e[tag=bounding_cuboid] run scoreboard players add @n[tag=attack_tmp] total_bullet_count $(add_bullet)
            function system:player/gun/clump