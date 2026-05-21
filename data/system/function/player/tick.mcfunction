# player/tick
    ## leave_game
        execute if score @s leave matches 1.. run function system:player/init
    ## death
        execute if score @s death matches 1.. run function system:player/death
    ## onground
        execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} run function system:player/onground

    ## utils
        execute if items entity @s player.cursor barrier run function system:player/retire

    ## skill
        ## passive
            function system:player/skill/root
        ## use
            execute if items entity @s[tag=user] weapon.offhand * run function system:player/skill/use
        
    ## inventory
        ### weaponをset | indicator用にkill数ソート
            execute if entity @s[tag=user] run function system:game/inventory/root {sort:true}


    ## join team
        execute if entity @s[tag=!team_set_tick] run function system:player/set_team


    ## score
        execute if score @s melee_ct matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 2.0 0.0
        scoreboard players remove @s[scores={melee_ct=1..}] melee_ct 1
        execute if score @s gun_ct matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0 0.0
        scoreboard players remove @s[scores={gun_ct=1..}] gun_ct 1

    ## tag remove
        tag @s remove team_set_tick