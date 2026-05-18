
    ## decrement
        execute as @e[tag=interaction] store result entity @s data.time int 0.9999999999 run data get entity @s data.time
    ## kill
        kill @e[tag=interaction,nbt={data:{time:0}}]

    ## tp
        execute as @e[tag=interaction] at @s run function system:game/interaction/tp with entity @s data

    ## summon
        execute as @e[tag=!interaction,tag=!bullet,tag=user] run function system:game/interaction/summon with entity @s