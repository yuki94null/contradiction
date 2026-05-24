# player/gun/clump
    ## data get
        data remove storage .:system tmp
        data modify storage .:system tmp set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".weapon
        function system:player/mcr_copy_data with storage .:system tmp

    ## 最大値clump
        execute store result score $tmp global run data get storage .:system tmp.weapon.portable_bullet 1.0
        execute if score @s total_bullet_count > $tmp global run scoreboard players operation @s total_bullet_count = $tmp global