# player/select_loadout
    ## 返す
        $execute unless data storage .:system weapon[{loadout:$(loadout)}] run return run function system:log/error/add {error_id:"player.set_loadout.undefined",error_info:"未定義のロードアウトです '$(loadout)'"}
    ## マクロ
        ### 成形
            data remove storage .:system tmp
            data modify storage .:system tmp.UUID set from entity @s UUID
            $data modify storage .:system tmp.loadout set value "$(loadout)"
            $data modify storage .:system tmp.melee set from storage .:system weapon[{loadout:"$(loadout)"}].melee.kinds
            $data modify storage .:system tmp.gun set from storage .:system weapon[{loadout:"$(loadout)"}].gun.kinds
        ### マクロ
            function system:player/mcr_select_loadout with storage .:system tmp