$particle $(particle) ^ ^ ^$(r) 0.0625 0.0625 0.0625 0.0 2 force @a

execute store result storage .:function slash_particle.yaw int 0.9999999999 run scoreboard players get $yaw global
execute store result score $yaw global run data get storage .:function slash_particle.yaw
execute if score $yaw global matches 0 run return fail
$execute rotated ~-1 ~$(one_pitch) run function system:function/slash_particle/loop with storage .:function slash_particle