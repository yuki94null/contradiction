# player/skill/root
    ## 選択してるやつを取得
        function system:player/get_selected with entity @s
    ## スキル名からデータを取得
        function system:player/skill/mcr_set_data with storage .:system tmp
    ## クールタイムの設定
        function system:player/skill/charge with storage .:system tmp.skill
    ## アンカー
        execute if data storage .:system tmp.skill{kinds:"alt_shift"} run function system:player/skill/alt_shift/particle_at_anchor with entity @s