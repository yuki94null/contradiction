# function/send_console_message/input
    ## 村人は死んだときにコンソールにログが出る
        $execute positioned ~ ~-100000 ~ run summon villager ~ ~ ~ {Tags:[tmp],CustomName:'$(text)'}
        execute positioned ~ ~-100000 ~ run kill @n[tag=tmp,type=villager,distance=..0.1]