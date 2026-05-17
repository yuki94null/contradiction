# game/hotbar/summon
    ## キル数の位置にsummon
        $summon snowball 0.0 $(kill).0 0.0 {Tags:[sort,tmp]}
    ## owner付与
        data modify entity @n[tag=tmp] Owner set from entity @s UUID
    ## tidying
        tag @e remove tmp