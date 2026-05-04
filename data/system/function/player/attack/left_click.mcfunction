# player/left_click
    ## revoke
        advancement revoke @s only system:left_click

    ## init
        data modify storage km_bounding: arguments.cuboid set value {selector:"@e[nbt={Brain:{}}]",x_plus:0.5d,y_plus:2.0d,z_plus:4.0d,x_minus:0.5d,y_minus:1.0d,z_minus:0b}
    ## item
        ### データを移動
            data remove storage .:game Item
            data modify storage .:game Item set from entity @s SelectedItem
        ### 判定
            ### データ成形
                execute unless score @s attackct matches 1.. if data storage .:game Item.components."minecraft:custom_data".Melee run \
                    function system:player/attack/mcr_ with storage .:game Item.components."minecraft:custom_data".Melee
            ### 判定など
                function system:player/attack/melee/attack with storage km_bounding: arguments.cuboid