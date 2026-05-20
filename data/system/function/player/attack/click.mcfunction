# player/left_click
    ## revoke
        advancement revoke @s only system:left_click
        advancement revoke @s only system:right_click
    ## team
        function system:game/hotbar/root {bool:false}
    ## function
        function system:player/attack/attack_general
        