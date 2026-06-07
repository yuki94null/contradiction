# item/selected_loadout
    ## ロードアウトを取得 
        function system:player/get_selected with entity @s
        function system:item/mcr_loadout_data with storage .:system tmp
    ## マクロデータ作る
        ### パラメータをテキストに成形 (表示したいパラメータが増えたとき用に分けておく)
            function system:item/text_melee with storage .:system tmp.melee
            function system:item/text_gun with storage .:system tmp.gun

            data modify storage .:system tmp.melee.ct set from storage .:system tmp.melee.melee_ct
            data modify storage .:system tmp.gun.ct set from storage .:system tmp.gun.gun_ct

        ### 定型文
            #### セット位置
                data modify storage .:system tmp.melee.pass set value "replace entity @s hotbar.0"
                data modify storage .:system tmp.gun.pass set value "replace entity @s hotbar.1"
            #### 色
                data modify storage .:system tmp.melee.color set value "red"
                data modify storage .:system tmp.gun.color set value "blue"

    ## セット
        function system:item/mcr_weapon with storage .:system tmp.melee
        function system:item/mcr_weapon with storage .:system tmp.gun