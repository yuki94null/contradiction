say endgame
tp @e[tag=game] -3.50 0.00 0.5 -45 0
gamemode adventure @a[tag=game]
execute as @e[tag=player] run function system:player/skill/alt_shift/kill_anchor with entity @s

execute as @a[tag=player] run spawnpoint @s 0 0 0 -45 0
stopsound @a[tag=player] * system:music.project_093
scoreboard players reset @a[tag=player] sound
function system:game/init