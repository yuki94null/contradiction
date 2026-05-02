# function/send_console_message/input
    ## 村人は死んだときにコンソールにログが出る
        $execute positioned ~ ~-100000 ~ run summon villager ~ ~ ~ {Tags:[Tmp],CustomName:'$(Text)'}
        execute positioned ~ ~-100000 ~ run kill @n[tag=Tmp,type=villager,distance=..0.1]