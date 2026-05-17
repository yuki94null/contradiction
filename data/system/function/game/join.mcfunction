# game/join
    ## 返すやつら
        ### ロードアウト見設定
            function system:player/get_selected_loadout with entity @s
            execute unless data storage .:system tmp.melee unless data storage .:system tmp.gun run return run function system:log/error/add {error_id:"game.join.no_loadout.all",error_info:"ロードアウトが設定されていません"}
            execute unless data storage .:system tmp.melee run return run function system:log/error/add {error_id:"game.join.no_loadout.melee",error_info:"近距離武器のロードアウトが設定されていません"}
            execute unless data storage .:system tmp.gun run return run function system:log/error/add {error_id:"game.join.no_loadout.gun",error_info:"遠距離武器ののロードアウトが設定されていません"}
        ### 満員
            execute store result score $player_count global if entity @e[tag=queue]
            execute if score $player_count global matches 4.. run return run function system:log/error/add {error_id:"game.join.max_player",error_info:"キューが満員です"}
        ### プレイヤーじゃない
            execute if entity @s[type=!player] run return run function system:log/error/add {error_id:"game.join.not_player",error_info:"joinしようとしましたが、主体がプレイヤーではありません"}
        ### 既ジョイン
            execute if entity @s[tag=queue] run return run function system:log/error/add {error_id:"game.join.already_queued",error_info:"すでにjoinしています"}
    ## ジョインしたやつだよ～
        tag @s add queue