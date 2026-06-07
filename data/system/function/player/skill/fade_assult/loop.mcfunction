# player/skill/fade_assult/loop
    ## 該当エンティティにタグ付け
        execute as @e[nbt={Brain:{}}] positioned ~-0.25 ~-0.25 ~-0.25 if entity @s[dx=0,dy=1,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] run tag @s[tag=!skill_tmp] add fade_assult

    ## 自分用に軌跡
        particle reverse_portal ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @s
        particle portal ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @s

    ## 進める
        scoreboard players remove $tmp global 1

    ## スコアなければやめる
        execute unless score $tmp global matches 1.. run return fail
    ## 見つかってたらやめる
        execute if entity @e[tag=fade_assult] run return fail
    ## 空気じゃなければやめる
        execute unless block ~ ~ ~ #air run return fail

    ## それ以外は進める
        execute positioned ^ ^ ^1.0 run function system:player/skill/fade_assult/loop