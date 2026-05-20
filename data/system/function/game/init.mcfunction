# game/init
    ## stopwatch
        stopwatch remove .:game
    ## kill
        kill @e[type=!player,tag=player]
        kill @e[tag=interaction]
    ## data
        data modify storage .:game game.state set value false
        data modify storage .:game game.limit_time set value 0
    ## tag
        tag @e[tag=player] remove player_0
        tag @e[tag=player] remove player_1
        tag @e[tag=player] remove player_2
        tag @e[tag=player] remove player_3
        tag @e[tag=player] remove player