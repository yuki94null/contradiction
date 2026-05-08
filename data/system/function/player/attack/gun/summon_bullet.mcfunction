# player/attack/gun/summon_bullet
    $say $(kinds)
    ## init
        tag @e remove attack_tmp
    ##
        execute anchored eyes positioned ^ ^ ^ run summon marker ~ ~ ~ {Tags:[attack_tmp,bullet],NoGravity:1b}
    ## 
        data modify entity @n[tag=attack_tmp] data.bullet set from storage .:game tmp.weapon
        data modify entity @n[tag=attack_tmp] data.bullet.owner set from entity @s UUID
        $execute store result storage .:game tmp.angle.rx double 0.1 run random value -$(diffusion_angle)0..$(diffusion_angle)0
        $execute store result storage .:game tmp.angle.ry double 0.1 run random value -$(diffusion_angle)0..$(diffusion_angle)0
        execute as @n[tag=attack_tmp] run function system:player/attack/gun/mcr_set_angle with storage .:game tmp.angle
    ## tidying
        ### tag
            tag @e remove attack_tmp
        ### set ct
            $scoreboard players set @s gun_ct $(gun_ct)