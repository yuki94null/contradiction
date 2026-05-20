# function/angle_to_vec3/get_pos
    ##
        data modify storage .:system tmp set from entity @s Pos
        execute store result score $x hb.Motion run data get storage .:system tmp[0] 10000.0
        execute store result score $y hb.Motion run data get storage .:system tmp[1] 10000.0
        execute store result score $z hb.Motion run data get storage .:system tmp[2] 10000.0
        kill @s