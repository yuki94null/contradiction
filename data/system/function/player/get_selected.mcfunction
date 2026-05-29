# player/get_selected
    ## init
        data modify storage .:system tmp.melee set value "none"
        data modify storage .:system tmp.gun set value "none"
        data modify storage .:system tmp.skill set value "none"

    ## 
        $data modify storage .:system tmp merge from storage .:system player[{UUID:"$(UUID)"}]
        