# game/join
    ## 返すやつら
        execute store result score $PlayerCount global if entity @e[tag=Queue]
        execute if score $PlayerCount global matches 4.. run return run function system:log/error/add {ErrorID:"game.join.maxplayer",ErrorInfo:"キューが満員です"}
        execute if entity @s[type=!player] run return run function system:log/error/add {ErrorID:"game.join.notplayer",ErrorInfo:"joinしようとしましたが、主体がプレイヤーではありません"}
        execute if entity @s[tag=Queue] run return run function system:log/error/add {ErrorID:"game.join.already_queued",ErrorInfo:"すでにjoinしています"}
    ## ジョインしたやつだよ～
        tag @s add Queue