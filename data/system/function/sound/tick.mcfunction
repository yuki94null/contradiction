scoreboard players add $tmp sound 1
data modify storage .:sound tmp set from storage .:system music.project_093
execute store result storage .:sound tmp.index int 1.0 run scoreboard players get $tmp sound
function system:sound/mcr with storage .:sound tmp