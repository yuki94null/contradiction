# tick
    ## time
        execute store result score $Time global store result score Time log run stopwatch query .:log 1.0
    ## game
        execute if data storage .:system {Game:true} run function system:game/tick with storage .:game Game

    ## as player
        execute as @a at @s run function system:player/tick