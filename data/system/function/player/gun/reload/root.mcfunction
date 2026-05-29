# player/reload/root
    ## 弾なかったらタイマー進めない
        execute unless score @s total_bullet_count matches 1.. run return fail

    ## 銃のデータゲット
        data remove storage .:system tmp
        data modify storage .:system tmp set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".weapon
        function system:player/mcr_copy_data with storage .:system tmp

    ## マガジンが最大ならタイマー進めない
        execute store result score $tmp global run data get storage .:system tmp.weapon.magazine 1.0
        execute if score @s bullet_count >= $tmp global run return fail

    ## タイマー進める
        scoreboard players add @s reload_time 1

    ## リロード時間たったら
        execute store result score $tmp global run data get storage .:system tmp.weapon.reload_time 1.0
        execute if score @s reload_time >= $tmp global run function system:player/gun/reload/reload