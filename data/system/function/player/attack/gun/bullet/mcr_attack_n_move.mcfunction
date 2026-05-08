# # player/attack/gun/bullet/attack_n_move
#     ## init
#         tag @e remove bounding_cuboid
#         data modify storage km_bounding: arguments.cuboid set value \
#             {selector:"@e[nbt={Brain:{}}]",x_plus:0.5d,y_plus:0.5d,z_plus:1.0d,x_minus:0.5d,y_minus:0.5d,z_minus:0b}
#     ## 判定
#         function km_bounding:cuboid/
#         $execute as @e[tag=!same_uuid,tag=bounding_cuboid] run damage @s $(bullet_damage) player_attack by @n[tag=same_uuid]
#         particle end_rod
#     ## tidying
#         ## tag
#             tag @s add already_attack_n_move
#         ## score
#             scoreboard players remove #Tmp global 1
#     ## 再帰
#         $execute unless score #Tmp global matches 1.. run return run tp @s ~ ~ ~ ~ ~$(fall_angle)
#         execute unless block ~ ~ ~ #air run return run kill @s
#         execute positioned ^ ^ ^1.0 run function system:player/attack/gun/bullet/mcr_attack_n_move with entity @s data.bullet

# player/attack/gun/bullet/attack_n_move
    ## init
        tag @e remove bounding_cuboid
        $data modify storage km_bounding: arguments.cuboid set value \
            {selector:"@e[nbt={Brain:{}}]",x_plus:0.5d,y_plus:0.0d,z_plus:$(bullet_speed)d,x_minus:0.5d,y_minus:2.0d,z_minus:0b}
    ## 判定
        function km_bounding:cuboid/
        $execute as @e[tag=!same_uuid,tag=bounding_cuboid] run damage @s $(bullet_damage) player_attack by @n[tag=same_uuid]
        particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
    ## tidying
        ## tag
            tag @s add already_attack_n_move
        ## score
            # scoreboard players remove #Tmp global 1
    ## 再帰
        execute unless block ~ ~ ~ #air run return run kill @s
        $tp @s ^ ^ ^$(bullet_speed) ~ ~$(fall_angle)
        # execute positioned ^ ^ ^1.0 run function system:player/attack/gun/bullet/mcr_attack_n_move with entity @s data.bullet