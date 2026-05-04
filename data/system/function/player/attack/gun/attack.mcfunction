# player/attack/gun/attack
    $say $(kinds)
    ## init
        tag @s add attack_tmp
    ## 判定
    ## tidying
        ### tag
            tag @s remove attack_tmp
        ### set ct
            $scoreboard players set @s gun_ct $(gun_ct)