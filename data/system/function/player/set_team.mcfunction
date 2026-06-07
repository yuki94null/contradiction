# player/set_team
    ## join team
        tag @s remove melee
        tag @s remove gun
        execute if entity @s[tag=!queue] if entity @s[tag=player] if items entity @s weapon.mainhand *[custom_data~{weapon:{type:"melee"}}] run tag @s add melee
        execute if entity @s[tag=!queue] if entity @s[tag=player] if items entity @s weapon.mainhand *[custom_data~{weapon:{type:"gun"}}] run tag @s add gun
        team join melee @s[team=!melee,tag=melee]
        team join gun @s[team=!gun,tag=gun]
        
        team join none @s[tag=!queue,tag=!player]
        team join join @s[tag=queue,tag=!player]
        tag @s add team_set_tick