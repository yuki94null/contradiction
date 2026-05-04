# player/select_loadout
    ## 返す
        $execute unless data storage .:system Weapon[{Loadout:$(Loadout)}] run return run function system:log/error/add {ErrorID:"player.selectloadout.undefined",ErrorInfo:"未定義のロードアウトです '$(Loadout)'"}
    ## マクロ
        ### 成形
            data remove storage .:system Tmp
            data modify storage .:system Tmp.UUID set from entity @s UUID
            $data modify storage .:system Tmp merge from storage .:system Weapon[{Loadout:"$(Loadout)"}]
        ### マクロ
            function system:player/mcr_select_loadout with storage .:system Tmp