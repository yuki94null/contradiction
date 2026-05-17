# player/attack/gun/angle_randomize/set_angle
    ## 精度の倍率用マーカー
        summon marker ~ ~ ~ {Tags:[tmp]}
        execute at @n[tag=attack_tmp] anchored eyes run tp @n[tag=tmp] ^ ^ ^50

    ## 実際に角度をつける
        $execute rotated as @n[tag=attack_tmp] rotated ~ ~90 positioned ^$(x) ^ ^$(z) facing entity @n[tag=tmp] eyes run rotate @s ~ ~-2

    ## tidying
        kill @e[tag=tmp]