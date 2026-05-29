#
execute unless data storage .:function ratio_ui_generator.input_0 unless data storage .:function ratio_ui_generator.input_1 run return run function system:log/error/add {error_id:"function.ratio_ui_generator.error.data_shortage",error_info:"storage .:function ratio_ui_generator.input_0 || ratio_ui_generator.input_0"}
execute unless data storage .:function ratio_ui_generator.input_0 run return run function system:log/error/add {error_id:"function.ratio_ui_generator.error.data_shortage",error_info:"storage .:function ratio_ui_generator.input_0"}
execute unless data storage .:function ratio_ui_generator.input_1 run return run function system:log/error/add {error_id:"function.ratio_ui_generator.error.data_shortage",error_info:"storage .:function ratio_ui_generator.input_1"}

data remove storage .:function ratio_ui_generator.result

execute store result score $tmp global run data get storage .:function ratio_ui_generator.input_0 100.0
execute store result score $ratio global run data get storage .:function ratio_ui_generator.input_1 4000.0

scoreboard players operation $ratio global /= $tmp global

 execute if score $ratio global matches 0 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"::::::::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 1 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|","color":"green"},{"text":":::::::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 2 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||","color":"green"},{"text":"::::::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 3 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||","color":"green"},{"text":":::::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 4 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||","color":"green"},{"text":"::::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 5 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||","color":"green"},{"text":":::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 6 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||","color":"green"},{"text":"::::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 7 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||","color":"green"},{"text":":::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 8 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||","color":"green"},{"text":"::::::::::::::::::::::::::::::::","color":"gray"}]
 execute if score $ratio global matches 9 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||","color":"green"},{"text":":::::::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 10 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||","color":"green"},{"text":"::::::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 11 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||","color":"green"},{"text":":::::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 12 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||","color":"green"},{"text":"::::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 13 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||","color":"green"},{"text":":::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 14 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||","color":"green"},{"text":"::::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 15 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||","color":"green"},{"text":":::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 16 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||","color":"green"},{"text":"::::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 17 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||","color":"green"},{"text":":::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 18 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||","color":"green"},{"text":"::::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 19 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||","color":"green"},{"text":":::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 20 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||","color":"green"},{"text":"::::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 21 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||","color":"green"},{"text":":::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 22 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||","color":"green"},{"text":"::::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 23 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||","color":"green"},{"text":":::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 24 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||","color":"green"},{"text":"::::::::::::::::","color":"gray"}]
execute if score $ratio global matches 25 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||","color":"green"},{"text":":::::::::::::::","color":"gray"}]
execute if score $ratio global matches 26 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||","color":"green"},{"text":"::::::::::::::","color":"gray"}]
execute if score $ratio global matches 27 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||","color":"green"},{"text":":::::::::::::","color":"gray"}]
execute if score $ratio global matches 28 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||","color":"green"},{"text":"::::::::::::","color":"gray"}]
execute if score $ratio global matches 29 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||","color":"green"},{"text":":::::::::::","color":"gray"}]
execute if score $ratio global matches 30 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||","color":"green"},{"text":"::::::::::","color":"gray"}]
execute if score $ratio global matches 31 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||||","color":"green"},{"text":":::::::::","color":"gray"}]
execute if score $ratio global matches 32 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||||","color":"green"},{"text":"::::::::","color":"gray"}]
execute if score $ratio global matches 33 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||||||","color":"green"},{"text":":::::::","color":"gray"}]
execute if score $ratio global matches 34 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||||||","color":"green"},{"text":"::::::","color":"gray"}]
execute if score $ratio global matches 35 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||||||||","color":"green"},{"text":":::::","color":"gray"}]
execute if score $ratio global matches 36 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||||||||","color":"green"},{"text":"::::","color":"gray"}]
execute if score $ratio global matches 37 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||||||||||","color":"green"},{"text":":::","color":"gray"}]
execute if score $ratio global matches 38 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||||||||||","color":"green"},{"text":"::","color":"gray"}]
execute if score $ratio global matches 39 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"|||||||||||||||||||||||||||||||||||||||","color":"green"},{"text":":","color":"gray"}]
execute if score $ratio global matches 40 run return run data modify storage .:function ratio_ui_generator.result set value [{"text":"||||||||||||||||||||||||||||||||||||||||","color":"green"}]

return fail

# 10 20 200