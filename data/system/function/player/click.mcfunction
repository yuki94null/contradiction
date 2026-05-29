# player/click
    ## revoke
        advancement revoke @s only system:left_click
        advancement revoke @s only system:right_click

        swing @s mainhand

    ## join suru?
        execute positioned 12.5 2.0 12.5 if entity @s[distance=..2.0] run return run function system:player/join
    ## 強制スタート？
        execute positioned 2.00 0.00 9.00 if entity @s[distance=..2.0] run return run function system:game/start
    
    ## set loadout toka skill
        ### init
            tag @e remove clicked
            tag @s add click
        ### 範囲内のやつにタグ付け
            execute as @e[tag=ui_marker] \
            positioned ^ ^ ^1000 if entity @s[distance=..1000] positioned ^ ^ ^-1000 \
            positioned ^ ^ ^-1000 if entity @s[distance=..1008] positioned ^ ^ ^1000 \
            positioned ^1000 ^ ^ if entity @s[distance=..1004] positioned ^-1000 ^ ^ \
            positioned ^-1000 ^ ^ if entity @s[distance=..1004] positioned ^1000 ^ ^ \
            positioned ^ ^1000 ^ if entity @s[distance=..1003] positioned ^ ^-1000 ^ \
            positioned ^ ^-1000 ^ if entity @s[distance=..1003] positioned ^ ^1000 ^ run \
                tag @s add clicked
        ### いたらリターン
            execute if entity @e[tag=clicked] run \
                return run \
                    function system:player/select_equipment
        ### tidying
            tag @s remove click

    ## team
        function system:game/inventory/root {sort:false}

    
    ## function
        function system:player/attack/attack_general
        