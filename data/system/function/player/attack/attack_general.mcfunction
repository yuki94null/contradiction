# player/attack/attack_general
    ## 実行順の補間
        execute as @e[nbt={Brain:{}}] run function system:player/set_team
    ## init
        data remove storage .:game tmp
        data remove storage .:game Item
        data modify storage km_bounding: arguments.cuboid set value \
            {selector:"@e[nbt={Brain:{}}]",x_plus:0.5d,y_plus:2.0d,z_plus:4.0d,x_minus:0.5d,y_minus:1.0d,z_minus:0b}

        tag @s add attack_tmp

    ## データを整形
        data modify storage .:game Item set from entity @s SelectedItem
        data modify storage .:game tmp set from storage .:game Item.components."minecraft:custom_data".weapon
        function system:player/mcr_copy_data with storage .:game tmp
        data modify storage .:game tmp.weapon set from storage .:system tmp.weapon
        data modify storage km_bounding: arguments.cuboid merge from storage .:game tmp.weapon.km_bounding
    ## 判定
        ### melee
            execute unless score @s melee_ct matches 1.. if data storage .:game Item.components."minecraft:custom_data".weapon{type:"melee"} run \
                function system:player/attack/melee/root with storage .:game tmp.weapon

        ### gun
            execute unless score @s gun_ct matches 1.. if data storage .:game Item.components."minecraft:custom_data".weapon{type:"gun"} run \
                function system:player/attack/gun/root with storage .:game tmp.weapon

    ## tidying
        tag @s remove attack_tmp