# player/tick
    ## leave_game
        execute if score @s leave matches 1.. run function system:player/init
    ## join team
        team join None
        execute if items entity @s[team=!Gun] weapon.mainhand *[custom_data~{Gun:{}}] run team join Gun @s
        execute if items entity @s[team=!Melee] weapon.mainhand *[custom_data~{Melee:{}}] run team join Melee @s

    ## score
        execute if score @s attackct matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 2.0 0.0
        scoreboard players remove @s[scores={attackct=1..}] attackct 1