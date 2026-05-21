say endgame
tp @e[tag=game] -3.50 0.00 0.5 -90 0
gamemode adventure @a[tag=game]
execute as @e[tag=player] run function system:player/skill/alt_shift/kill_anchor with entity @s
function system:game/init