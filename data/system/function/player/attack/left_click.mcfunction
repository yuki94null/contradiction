# player/left_click
    ## revoke
        advancement revoke @s only system:left_click
    ## init
        data remove storage .:game tmp
        data remove storage .:game Item
        data modify storage km_bounding: arguments.cuboid set value \
            {selector:"@e[nbt={Brain:{}}]",x_plus:0.5d,y_plus:2.0d,z_plus:4.0d,x_minus:0.5d,y_minus:1.0d,z_minus:0b}
    ## item
        ### データを移動
            data modify storage .:game Item set from entity @s SelectedItem
        ### 判定
            ### データ成形
                execute unless score @s attack_ct matches 1.. if data storage .:game Item.components."minecraft:custom_data".melee run \
                    function system:player/attack/mcr_copy_data with storage .:game Item.components."minecraft:custom_data".melee
                data modify storage km_bounding: arguments.cuboid merge from storage .:game tmp.weapon.km_bounding
            ### 判定など
                function system:player/attack/melee/attack with storage .:game tmp.weapon