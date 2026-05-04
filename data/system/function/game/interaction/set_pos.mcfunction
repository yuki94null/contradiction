# game/interaction/summon
    ## decrement
        execute as @e[tag=Interaction] store result entity @s data.Time int 0.9999999999 run data get entity @s data.Time
    ## kill
        kill @e[tag=Interaction,nbt={data:{Time:0}}]
    ## tp
        tp @n[tag=Interaction0] @n[tag=Player0]
        tp @n[tag=Interaction1] @n[tag=Player1]
        tp @n[tag=Interaction2] @n[tag=Player2]
        tp @n[tag=Interaction3] @n[tag=Player3]
    ## summon
        execute if entity @n[tag=Player0] run summon interaction 0 100000 0 {Tags:[Interaction,Interaction0],width:10,height:10,data:{Time:3}}
        execute if entity @n[tag=Player1] run summon interaction 0 100000 0 {Tags:[Interaction,Interaction1],width:10,height:10,data:{Time:3}}
        execute if entity @n[tag=Player2] run summon interaction 0 100000 0 {Tags:[Interaction,Interaction2],width:10,height:10,data:{Time:3}}
        execute if entity @n[tag=Player3] run summon interaction 0 100000 0 {Tags:[Interaction,Interaction3],width:10,height:10,data:{Time:3}}