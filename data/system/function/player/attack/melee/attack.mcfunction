# player/attack/melee/attack
    $say $(Melee)
    ## init
        tag @s add AttackTmp
        tag @e remove bounding_cuboid
    ## 判定
        function km_bounding:cuboid/ with storage km_bounding:
        ### 自分を外す
            tag @s remove bounding_cuboid
        ### 近接のやつ外す
            tag @e[tag=bounding_cuboid,team=Melee] remove bounding_cuboid
    ##
        $execute as @e[tag=bounding_cuboid] run damage @s $(MeleeDamage) player_attack by @n[tag=AttackTmp]
    ## tidying
        ### tag
            tag @s remove AttackTmp
        ### set ct
            $scoreboard players set @s attackct $(AttackCT)