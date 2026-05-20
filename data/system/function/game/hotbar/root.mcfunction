# game/hotbar/root
    ## init
        ### いったん消す
            execute if entity @s[tag=user] run function system:game/hotbar/clear_inventory

        data remove storage .:game tmp
        function system:player/get_selected
    ## weapon
        function system:item/selected_loadout
    ## health indicator用にkill数でソート
        execute if entity @s[tag=player] run function system:game/hotbar/sort
