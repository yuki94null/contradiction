# game/set_player_pos
    ## init
        data remove storage .:system tmp

    ## 武器セット
        function system:player/get_selected with entity @s
        $data modify storage .:game player.$(index).items set from storage .:system tmp
    ## tp
        ### データ成形
            data modify storage .:system tmp.cx set from storage .:map current_map.points[{type:"center"}].Pos.x
            data modify storage .:system tmp.cy set from storage .:map current_map.points[{type:"center"}].Pos.y
            data modify storage .:system tmp.cz set from storage .:map current_map.points[{type:"center"}].Pos.z

            $data modify storage .:system tmp.x set from storage .:map current_map.points[{type:"spawn_$(index)"}].Pos.x
            $data modify storage .:system tmp.y set from storage .:map current_map.points[{type:"spawn_$(index)"}].Pos.y
            $data modify storage .:system tmp.z set from storage .:map current_map.points[{type:"spawn_$(index)"}].Pos.z
            $data modify storage .:system tmp.ry set from storage .:map current_map.points[{type:"spawn_$(index)"}].Pos.ry
        ### mcr
            function system:game/mcr_set_player_pos with storage .:system tmp
    ## tidying
        ## index
            execute store result storage .:system index int 1.0 run scoreboard players add #tmp global 1
            attribute @s knockback_resistance base set 1.0
        ## タグ剥奪
            tag @s remove queue