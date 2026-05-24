# player/skill/use
    ## 選択してるやつを取得
        function system:player/get_selected with entity @s
    ## スキル名からデータを取得
        function system:player/skill/mcr_set_data with storage .:system tmp
    ## それぞれのスキルに分岐
        function system:player/skill/mcr_use with storage .:system tmp.skill