# player/skill/bailout/root
    ## 飛んでから動くやつ
        execute if entity @s[tag=used_bailout] run return run function system:player/skill/bailout/second

    ## スキル残数がなければリターン
        execute unless score @s skill_charge matches 1.. run return fail
    ## スキル発動時の汎用ファンクション
        function system:player/skill/success with storage .:system tmp.skill

    ## タグ付け
        tag @s add used_bailout
        tag @s add use_bailout_tick

    ## 地上かどうかで強さをいじるって生成
        execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:false}}} rotated ~180 -20 run function system:function/angle_to_vec3/input {scale:2.0}
        execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} rotated ~180 -20 run function system:function/angle_to_vec3/input {scale:3.0}
    ## モーション与える
        function #p_motion:xyz
    ## 音
        playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 1.0 1.0 0.0

    ## particle
        particle campfire_cosy_smoke ~2.0 ~1.5 ~2.0 2.0 1.5 2.0 0.0 500 force @a
        particle campfire_cosy_smoke ~-2.0 ~1.5 ~2.0 2.0 1.5 2.0 0.0 500 force @a
        particle campfire_cosy_smoke ~2.0 ~1.5 ~-2.0 2.0 1.5 2.0 0.0 500 force @a
        particle campfire_cosy_smoke ~-2.0 ~1.5 ~-2.0 2.0 1.5 2.0 0.0 500 force @a