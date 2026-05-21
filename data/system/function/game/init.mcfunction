# game/init
    ## stopwatch
        stopwatch remove .:game
    ## kill
        execute as @e[tag=player] run function system:player/skill/alt_shift/kill_anchor with entity @s
        kill @e[type=!player,tag=player]
        kill @e[tag=interaction]
    ## data
        data modify storage .:game game.state set value false
        data modify storage .:game game.limit_time set value 0
    ## tag
        tag @e remove player_0
        tag @e remove player_1
        tag @e remove player_2
        tag @e remove player_3
        tag @e remove player
        tag @e remove game
        tag @e remove retire