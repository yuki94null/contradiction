# player/init
    ## attribute
        attribute @s knockback_resistance base set 1.0
    ## leave from team
        team leave @s
    ## score reset
        scoreboard players reset @s leave
        scoreboard players reset @s sound
    ## tag remove
        tag @s remove queue
        tag @s remove player_0
        tag @s remove player_1
        tag @s remove player_2
        tag @s remove player_3