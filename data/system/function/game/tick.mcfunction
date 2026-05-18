# game/tick
    ## game
        # $execute if stopwatch .:game $(limit_time).. run function system:game/finish
        execute store result score $player_count global if entity @e[tag=player]
        execute unless score $player_count global matches 1.. run function system:game/finish
    ## 
        # function system:game/interaction/root

    ## hotbar
        ### weaponをset | indicator用にkill数ソート <- .tickでやることにした
            # execute as @e[tag=player] at @s run function system:game/hotbar/root
        ### health indicator
            data remove storage .:game tmp
            data modify storage .:game tmp.index set value 8
            execute store result score $max_health global run data get storage .:system setting.max_health 100
            execute positioned 0.0 0.0 0.0 as @e[tag=sort,sort=furthest,limit=4] on origin run function system:game/hotbar/create_item_data

        ### tidying
            kill @e[tag=sort]
