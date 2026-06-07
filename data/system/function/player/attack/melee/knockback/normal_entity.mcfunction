# player/attack/melee/knockback/normal_entity
    ## 作成したベクトルと現在のモーションを足し合わせる
        # tellraw @a [{nbt:"Motion",entity:"@s"}]
        ### X
            execute store result score $x hb.Motion run data get storage .:function pos_to_motion.Motion[0] 10000
            execute store result score $tmp global run data get entity @s Motion[0] 10000
            scoreboard players operation $x hb.Motion += $tmp global
            execute store result entity @s Motion[0] double 0.0001 run scoreboard players get $x hb.Motion
        ### Y
            execute store result score $y hb.Motion run data get storage .:function pos_to_motion.Motion[1] 10000
            execute store result score $tmp global run data get entity @s Motion[1] 10000
            scoreboard players operation $y hb.Motion += $tmp global
            execute store result entity @s Motion[1] double 0.0001 run scoreboard players get $y hb.Motion
        ### Z
            execute store result score $z hb.Motion run data get storage .:function pos_to_motion.Motion[2] 10000
            execute store result score $tmp global run data get entity @s Motion[2] 10000
            scoreboard players operation $z hb.Motion += $tmp global
            execute store result entity @s Motion[2] double 0.0001 run scoreboard players get $z hb.Motion