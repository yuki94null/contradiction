# player/attack/melee/knockback/player
    ## 作成したベクトルをp_motionへ
        execute store result score $x hb.Motion run data get storage .:function pos_to_motion.Motion[0] 10000
        execute store result score $y hb.Motion run data get storage .:function pos_to_motion.Motion[1] 10000
        execute store result score $z hb.Motion run data get storage .:function pos_to_motion.Motion[2] 10000
        function #p_motion:xyz