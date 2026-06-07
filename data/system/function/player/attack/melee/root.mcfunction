# player/attack/melee/root
    ## 武器ごとの処理
        $function system:player/attack/melee/$(kinds)/root

    ## 武器のデータを元にに当たり判定などを
        function system:player/attack/melee/attack with storage .:game tmp.weapon

    ## ノックバックを武器ごとに
        $execute as @e[tag=bounding_cuboid] run function system:player/attack/melee/$(kinds)/knockback