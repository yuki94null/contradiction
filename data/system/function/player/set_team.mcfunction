# player/set_team
    ## join team
        execute if items entity @s[team=!gun] weapon.mainhand *[custom_data~{weapon:{type:"gun"}}] run team join gun @s
        execute if items entity @s[team=!melee] weapon.mainhand *[custom_data~{weapon:{type:"melee"}}] run team join melee @s
        
        team join none @s[tag=!queue,tag=!player]
        team join join @s[tag=queue,tag=!player]
        tag @s add team_set_tick