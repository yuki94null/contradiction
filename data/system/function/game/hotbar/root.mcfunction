# game/hotbar/root
    ## init
        data remove storage .:game tmp
    ## weapon
        execute if entity @s[tag=player_0] run function system:game/hotbar/set_weapons with storage .:game player.0.items
        execute if entity @s[tag=player_1] run function system:game/hotbar/set_weapons with storage .:game player.1.items
        execute if entity @s[tag=player_2] run function system:game/hotbar/set_weapons with storage .:game player.2.items
        execute if entity @s[tag=player_3] run function system:game/hotbar/set_weapons with storage .:game player.3.items
    ## health indicator用にkill数でソート
        function system:game/hotbar/sort
