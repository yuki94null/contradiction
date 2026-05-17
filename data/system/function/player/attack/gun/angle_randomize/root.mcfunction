# player/attack/gun/angle_randomize/root
    ## ランダム半径を生成
        $execute positioned 0.0 0.0 0.0 rotated $(rdm) 0 positioned ^ ^ ^$(diff) summon marker run function system:player/attack/gun/angle_randomize/get_pos
    ## 生成したランダム半径をもとに視点を指定
        function system:player/attack/gun/angle_randomize/set_angle with storage .:game tmp.angle
