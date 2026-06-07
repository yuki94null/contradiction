# player/attack/gun/bullet/too_many_to_kill
    ## 弾の数を数えてkill
        execute if score $tmp global matches 1.. run kill @s
        scoreboard players remove $tmp global 1