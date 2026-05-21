say fade_assult

execute unless score @s skill_charge matches 1.. run return fail
function system:player/skill/success with storage .:system tmp.skill

tag @s add skill_tmp

scoreboard players set $tmp global 120
execute anchored eyes positioned ^ ^ ^ run function system:player/skill/fade_assult/loop

execute anchored eyes at @n[tag=fade_assult] positioned ^ ^ ^-2.5 facing entity @n[tag=fade_assult] feet run tp @s ~ ~ ~ ~ ~

tag @e remove fade_assult
tag @s remove skill_tmp