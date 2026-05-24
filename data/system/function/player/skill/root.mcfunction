# player/skill/root
    ## 選択してるやつを取得
        function system:player/get_selected with entity @s
    ## スキル名からデータを取得
        function system:player/skill/mcr_set_data with storage .:system tmp
    ## クールタイムの設定
        function system:player/skill/charge with storage .:system tmp.skill