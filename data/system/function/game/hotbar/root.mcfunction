# game/hotbar/root
    ## init
        data remove storage .:game tmp
        function system:player/get_selected_loadout
    ## weapon
        function system:item/selected_loadout
    ## health indicator用にkill数でソート
        execute if entity @s[tag=player] run function system:game/hotbar/sort
