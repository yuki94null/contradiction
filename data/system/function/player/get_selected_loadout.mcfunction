# player/get_selected_loadout
    ## init
        data remove storage .:system tmp

    ## 
        $data modify storage .:system tmp set from storage .:system player[{UUID:"$(UUID)"}]