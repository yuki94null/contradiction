# game/join
    ## 返すやつら
        execute store result score $player_count global if entity @e[tag=queue]
        execute if score $player_count global matches 4.. run return run function system:log/error/add {error_id:"game.join.maxplayer",error_info:"キューが満員です"}
        execute if entity @s[type=!player] run return run function system:log/error/add {error_id:"game.join.not_player",error_info:"joinしようとしましたが、主体がプレイヤーではありません"}
        execute if entity @s[tag=queue] run return run function system:log/error/add {error_id:"game.join.already_queued",error_info:"すでにjoinしています"}
    ## ジョインしたやつだよ～
        tag @s add queue