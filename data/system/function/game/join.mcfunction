# game/join
    ## 返すやつら
        execute if entity @s[type=!player] run return run function system:log/error/add {ErrorID:"game.join.notplayer",ErrorInfo:"joinしようとしましたが、主体がプレイヤーではありません"}
        execute if entity @s[tag=Queue] run return run function system:log/error/add {ErrorID:"game.join.already_queued",ErrorInfo:"すでにjoinしています"}

tag @s add Queue