# player/skill/alt_shift/tp
    ## 透明化してプレイヤーのteleport durationをごまかす
        effect give @s invisibility
    ## tp
        tp @s ~ ~ ~ ~ ~
    ## 透明化消す
        effect clear @s invisibility

    ## particle
        particle enchanted_hit ~ ~ ~ 0.0 0.0 0.0 0.75 30 force @a
    ## sound
        playsound entity.player.teleport player @a ~ ~ ~ 1.0 1.0 0.0