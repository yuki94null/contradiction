# sound/root
    ## 曲再生
        ### ロビーの曲
            execute unless score @s sound matches 1.. positioned 0 1000 0 run \
                playsound system:music.project_115 record @s[tag=!player] ~ ~ ~ 100000000.0 1.0 1.0

        ### 戦闘中
            execute unless score @s sound matches 1.. positioned 0 1000 0 run \
                playsound system:music.project_093 record @s[tag=player] ~ ~ ~ 100000000.0 1.0 1.0

    ## サウンドのタイマー 
        scoreboard players add @s sound 1

    ## ループ
        execute if score @s sound matches 1280.. run scoreboard players reset @s[tag=!player] sound
        execute if score @s sound matches 1066.. run scoreboard players reset @s[tag=player] sound