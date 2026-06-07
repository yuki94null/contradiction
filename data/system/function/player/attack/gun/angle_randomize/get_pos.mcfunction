# player/attack/gun/angle_randomize/get_pos
    ## Posをデータに
        data modify storage .:game tmp.angle.x set from entity @s Pos[0]
        data modify storage .:game tmp.angle.z set from entity @s Pos[2]
    ## これはマーカーなので殺す
        kill @s