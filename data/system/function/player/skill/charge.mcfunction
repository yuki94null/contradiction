# player/skill/charge
    ## スキル残数がが最大値ならリターン
        $execute if score @s skill_charge matches $(max_charge).. run return fail

    ## ctがまだあれば減らしてリターン
        $execute unless score @s skill_ct matches $(skill_ct).. run return run scoreboard players add @s skill_ct 1

    ## でなければctが終わったのでスキル残数を増やす
        playsound minecraft:entity.breeze.land player @s ~ ~ ~ 1.0 1.0 0.0
        playsound minecraft:block.chest.locked player @a ~ ~ ~ 1.0 2 0.0
        scoreboard players add @s skill_charge 1
        scoreboard players set @s skill_ct 0