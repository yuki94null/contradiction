# player/tick
    ## leave_game
        execute if score @s leave matches 1.. run function system:player/init
    ## join team
        team join none
        execute if items entity @s[team=!gun] weapon.mainhand *[custom_data~{gun:{}}] run team join gun @s
        execute if items entity @s[team=!melee] weapon.mainhand *[custom_data~{melee:{}}] run team join melee @s

    ## score
        execute if score @s attack_ct matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 2.0 0.0
        scoreboard players remove @s[scores={attack_ct=1..}] attack_ct 1