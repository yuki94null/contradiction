# player/attack/gun/summon_bullet
    $say $(kinds)
    ## init
        data remove storage .:game tmp.angle
    ##
        execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~ ~ {Tags:[bullet_tmp,bullet],NoGravity:1b}
    ## 
        data modify entity @n[tag=bullet_tmp] data.bullet set from storage .:game tmp.weapon
        data modify entity @n[tag=bullet_tmp] data.bullet.owner set from entity @s UUID

    ## 角度をランダマイズ
        ### ランダムの角度
            execute store result storage .:game tmp.angle.rdm double 0.01 run random value 0..36000
        ### ブレる角度
            $execute store result storage .:game tmp.angle.diff double 1.0 run random value 0..$(diffusion_angle)
        ### 送る
            execute as @n[tag=bullet_tmp] at @s run function system:player/attack/gun/angle_randomize/root with storage .:game tmp.angle
    ## tidying
        ### tag
            tag @e remove bullet_tmp
        ### set ct
            $scoreboard players set @s gun_ct $(gun_ct)
    ## loop
        scoreboard players remove $tmp global 1
        execute if score $tmp global matches 1.. run function system:player/attack/gun/summon_bullet with storage .:game tmp.weapon