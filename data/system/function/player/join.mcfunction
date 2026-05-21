# game/join
    ## 返すやつら

        ### 既ジョイン
            execute if entity @s[tag=queue] run return run function system:player/leave

        ### 装備未設定
            function system:player/get_selected with entity @s
            execute unless data storage .:system tmp.melee run return run tellraw @s [{translate:"log.error.join.no_loadout",color:red}]
            execute unless data storage .:system tmp.gun run return run tellraw @s [{translate:"log.error.no_loadout",color:red}]
            execute unless data storage .:system tmp.skill run return run tellraw @s [{translate:"log.error.no_skill",color:red}]

    ## ジョインしたやつだよ～
        tag @s add queue
        team join join
        tellraw @s [{translate:"log.join",color:green}]
        playsound entity.experience_orb.pickup player @a ~ ~ ~ 1.0 2.0 0.1