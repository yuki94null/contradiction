
execute if entity @s[type=!marker] run return run function system:log/error/add {error_id:"function.pos_to_motion.error.invalid_entity",error_info:"is not marker"}

data remove storage .:function pos_to_motion.Motion

data modify storage .:function pos_to_motion.Motion set from entity @s Pos

kill @s