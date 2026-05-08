# game/tick
    ## game
        # $execute if stopwatch .:game $(limit_time).. run function system:game/finish
        execute store result score $player_count global if entity @e[tag=player]
        execute unless score $player_count global matches 1.. run function system:game/finish
    ## 
        function system:game/interaction/set_pos

    ## bullet
        execute as @e[tag=bullet,tag=!already_attack_n_move] at @s run function system:player/attack/gun/bullet/attack_n_move

    ##
        tag @e remove already_attack_n_move