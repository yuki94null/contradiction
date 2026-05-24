# player/leave
    ## tag消す
        tag @s remove queue
    ## tellraw
        tellraw @s [{translate:"log.leave",color:"gray"}]
    ## 音
        playsound block.conduit.deactivate player @a ~ ~ ~ 1.0 1.0 0.1