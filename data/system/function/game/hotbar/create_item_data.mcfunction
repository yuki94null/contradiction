# game/hotbar/create_item_data
    # $item modify entity @a[tag=player] hotbar.$(index) [{function:"fill_player_head",entity:"this"},{function:"set_components",components:{}}]
    ## item
        ### item name
            function system:function/get_player_name/input
            data modify storage .:game tmp.name set from storage .:function player_name
        ### damage
            scoreboard players operation $tmp global = $max_health global
            execute store result score $player_health global run data get entity @s Health 1000000
            scoreboard players operation $player_health global /= $max_health global
            scoreboard players remove $player_health global 9999
            execute if score $player_health global matches 1.. run scoreboard players set $player_health global -1
            execute store result storage .:game tmp.damage int -1.0 run scoreboard players get $player_health global
        ### item set
            function system:game/hotbar/mcr_set_health_indicator with storage .:game tmp

    ## tidying
        execute store result storage .:game tmp.index int 1.0 run data get storage .:game tmp.index 0.9999999999