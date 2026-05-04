# tick
    ## time
        execute store result score $time global store result score time log run stopwatch query .:log 1.0
    ## game
        execute if data storage .:game game{state:true} run function system:game/tick with storage .:game game

    ## as player
        execute as @a at @s run function system:player/tick