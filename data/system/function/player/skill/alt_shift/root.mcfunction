# player/skill/alt_shift/root
    ## スニークならアンカー設置
        execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run \
            return run \
                function system:player/skill/alt_shift/sneak with entity @s

    ## 自分のアンカーにタグつけ
        tag @e remove tmp
        function system:player/skill/alt_shift/anchor_check with entity @s

    ## 自分のアンカーいなければやめる
        execute unless entity @n[tag=tmp] run return run tag @e remove tmp

    ## スキルの残数がなければ帰る
        execute unless score @s skill_charge matches 1.. run return fail

    ## スキル発動時の汎用ファンクション
        function system:player/skill/success with storage .:system tmp.skill

    ## particle
        particle minecraft:cherry_leaves ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force @a
        particle minecraft:cherry_leaves ~ ~1.5 ~ 1.5 1.5 1.5 0 200 force @a

    ## sound
        playsound minecraft:entity.breeze.slide player @a ~ ~ ~ 1.0 1.0
        playsound minecraft:entity.breeze.whirl player @a ~ ~ ~ 1.0 1.0

    ## tpをする
        execute at @n[tag=tmp] run function system:player/skill/alt_shift/tp

    ## tidying
        tag @e remove tmp