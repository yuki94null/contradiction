
        execute if score $begin_game time matches 1.. run return run tellraw @s [{translate:"log.error.start.already_started",color:red}]
        execute store result score $player_count global if entity @e[tag=queue]
        execute if score $player_count global matches ..1 run return run tellraw @s [{translate:"log.error.start.player_shortage",color:red}]
        execute if data storage .:game game{state:true} run return run tellraw @s [{translate:"log.error.start.during_game",color:red}]

        tellraw @s [{translate:"log.start",color:green}]
        scoreboard players set $begin_game time 1