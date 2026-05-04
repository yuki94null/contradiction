# game/set_player_pos
    ## init
        data remove storage .:system Tmp
    ## TP
        ### データ成形
            data modify storage .:system Tmp.cx set from storage .:map CurrentMap.Points[{Type:"Center"}].Pos.x
            data modify storage .:system Tmp.cy set from storage .:map CurrentMap.Points[{Type:"Center"}].Pos.y
            data modify storage .:system Tmp.cz set from storage .:map CurrentMap.Points[{Type:"Center"}].Pos.z

            $data modify storage .:system Tmp.x set from storage .:map CurrentMap.Points[{Type:"Spawn$(Index)"}].Pos.x
            $data modify storage .:system Tmp.y set from storage .:map CurrentMap.Points[{Type:"Spawn$(Index)"}].Pos.y
            $data modify storage .:system Tmp.z set from storage .:map CurrentMap.Points[{Type:"Spawn$(Index)"}].Pos.z
            $data modify storage .:system Tmp.ry set from storage .:map CurrentMap.Points[{Type:"Spawn$(Index)"}].Pos.ry
        ### mcr
            function system:game/mcr_set_player_pos with storage .:system Tmp
    ## tidying
        ## Index
            execute store result storage .:system Index int 1.0 run scoreboard players add #Tmp global 1
        ## タグ剥奪
            tag @s remove Queue