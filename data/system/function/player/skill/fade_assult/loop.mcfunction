
execute as @e[nbt={Brain:{}}] if entity @s[dx=0,dy=1,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=1,dz=0] run tag @s[tag=!skill_tmp] add fade_assult



particle end_rod ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @s

scoreboard players remove $tmp global 1
execute unless score $tmp global matches 1.. run return fail
execute if entity @e[tag=fade_assult] run return fail
execute unless block ~ ~ ~ #air run return fail
execute positioned ^ ^ ^1.0 run function system:player/skill/fade_assult/loop