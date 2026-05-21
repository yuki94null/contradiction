# player/select_equipment
    ## 一番近いやつ特定
        tag @n[tag=clicked] add tmp
    ## function
        execute if entity @n[tag=tmp,tag=ui_loadout] run function system:player/loadout/set_loadout with entity @n[tag=tmp] data
        execute if entity @n[tag=tmp,tag=ui_skill] run function system:player/skill/set_skill with entity @n[tag=tmp] data
    ## tidying
        playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0 0.1
        tag @e remove clicked
        tag @s remove click
        tag @e remove tmp