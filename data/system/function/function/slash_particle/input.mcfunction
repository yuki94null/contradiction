
execute unless data storage .:function slash_particle.pitch run return run function system:log/error/add {error_id:"function.slash_particle.error.data_shortage",error_info:"storage .:function slash_particle.pitch"}
execute unless data storage .:function slash_particle.yaw run return run function system:log/error/add {error_id:"function.slash_particle.error.data_shortage",error_info:"storage .:function slash_particle.yaw"}
execute unless data storage .:function slash_particle.r run return run function system:log/error/add {error_id:"function.slash_particle.error.data_shortage",error_info:"storage .:function slash_particle.r"}

execute unless data storage .:function slash_particle.particle run return run function system:log/error/add {error_id:"function.slash_particle.error.data_shortage",error_info:"storage .:function slash_particle.particle"}

execute store result storage .:function slash_particle.pitch int 1.0 run function system:function/slash_particle/rdm with storage .:function slash_particle

## 正負を出す
execute store result score $rdm global run random value 0..1
scoreboard players operation $rdm global += $rdm global
execute store result storage .:function slash_particle.sign int 1.0 run scoreboard players remove $rdm global 1

function system:function/slash_particle/mcr_pitch_sign with storage .:function slash_particle

## pitch / yaw を算出
execute store result score $pitch global run data get storage .:function slash_particle.pitch 20000.0
execute store result score $yaw global run data get storage .:function slash_particle.yaw 2.0

execute store result storage .:function slash_particle.one_pitch double -0.0001 run scoreboard players operation $pitch global /= $yaw global

function system:function/slash_particle/mcr with storage .:function slash_particle