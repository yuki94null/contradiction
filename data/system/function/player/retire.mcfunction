# player/retire
    ## 観戦者に
        gamemode spectator
    ## タグ付け
        tag @s add retire
    ## メッセージ
        tellraw @a[tag=game] [{"translate":"log.game.retire",color:red,with:[{selector:"@s",color:green}]}]