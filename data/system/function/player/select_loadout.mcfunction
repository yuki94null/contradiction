# player/select_loadout
    ## 返す
        $execute unless data storage .:system weapon[{loadout:$(loadout)}] run return run function system:log/error/add {error_id:"player.select_loadout.undefined",error_info:"未定義のロードアウトです '$(loadout)'"}
    ## マクロ
        ### 成形
            data remove storage .:system tmp
            data modify storage .:system tmp.UUID set from entity @s UUID
            $data modify storage .:system tmp merge from storage .:system weapon[{loadout:"$(loadout)"}]
        ### マクロ
            function system:player/mcr_select_loadout with storage .:system tmp