# function/find_same_uuid/input
    ## 
        scoreboard players reset $tmp global
        $data modify storage .:function find_same_uuid.tmp set value $(UUID)
        execute store success score $tmp global run data modify storage .:function find_same_uuid.tmp set from entity @s UUID
        execute if score $tmp global matches 0 run tag @s add same_uuid