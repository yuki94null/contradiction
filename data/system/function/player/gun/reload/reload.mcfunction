# player/reload/reload
    ## タイマーリセット
        scoreboard players reset @s reload_time
    ## 弾減らす
        ### マガジンサイズを取得して、持ってる弾がそれ以下ならその値にする
            execute store result score $tmp global run data get storage .:system tmp.weapon.magazine 1.0
            scoreboard players operation $tmp global -= @s bullet_count
            execute if score @s total_bullet_count < $tmp global run scoreboard players operation $tmp global = @s total_bullet_count
        ### その値でリロード
            scoreboard players operation @s total_bullet_count -= $tmp global
            scoreboard players operation @s bullet_count += $tmp global

    ## tidying
        execute store result score $tmp global run data get storage .:system tmp.weapon.magazine 1.0
        execute if score @s bullet_count < $tmp global run playsound minecraft:block.bone_block.break player @a ~ ~ ~ 1.0 1 0.0
        execute if score @s bullet_count >= $tmp global run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1.0 2 0.0