# player/attack/melee/sword/knockback
    ## ベクトル作る
        execute positioned as @n[tag=attack_tmp] facing entity @s feet positioned 0.0 0.0 0.0 rotated ~ -30 positioned ^ ^ ^0.5 summon marker run function system:function/pos_to_motion/input
    ## プレイヤーかそれ以外か
        execute if entity @s[type=player] run return run function system:player/attack/melee/knockback/player
        function system:player/attack/melee/knockback/normal_entity