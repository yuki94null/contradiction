        scoreboard players add $begin_game time 1

        execute store result score $player_count global if entity @e[tag=queue]
        execute if score $player_count global matches ..1 run return run tellraw @a [{translate:"log.error.begin.player_shortage",color:red}]
        execute if data storage .:game game{state:true} run return run tellraw @a [{translate:"log.error.begin.during_game",color:red}]


        execute if score $begin_game time matches 1 run title @a title [{text:"5"}]
        execute if score $begin_game time matches 21 run title @a title [{text:"4"}]
        execute if score $begin_game time matches 41 run title @a title [{text:"3"}]
        execute if score $begin_game time matches 61 run title @a title [{text:"2"}]
        execute if score $begin_game time matches 81 run title @a title [{text:"1"}]

        execute if score $begin_game time matches 1 as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 0.0 0.0
        execute if score $begin_game time matches 21 as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 0.0 0.0
        execute if score $begin_game time matches 41 as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 0.0 0.0
        execute if score $begin_game time matches 61 as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 0.0 0.0
        execute if score $begin_game time matches 81 as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 0.0 0.0
        
        execute if score $begin_game time matches 101.. run title @a title [{text:"GO"}]
        execute if score $begin_game time matches 101.. as @a at @s run playsound entity.experience_orb.pickup ui @s ~ ~ ~ 1.0 2.0 1.0
        
        execute if score $begin_game time matches 101.. run function system:game/begin_game
