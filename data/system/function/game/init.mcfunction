# game/init
    ## stopwatch
        stopwatch remove .:game
    ## kill
        kill @e[type=!player,tag=Player]
        kill @e[tag=Kill]
    ## data
        data modify storage .:system Game.State set value false
        data modify storage .:system Game.LimitTime set value 0
    ## tag
        tag @e remove Queue
        tag @e[tag=Player] remove Player0
        tag @e[tag=Player] remove Player1
        tag @e[tag=Player] remove Player2
        tag @e[tag=Player] remove Player3
        tag @e[tag=Player] remove Player