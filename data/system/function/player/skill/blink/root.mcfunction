# player/skill/blink/root
    ## スキル残数がなければリターン
        execute unless score @s skill_charge matches 1.. run return fail
    ## スキル発動時の汎用ファンクション
        function system:player/skill/success with storage .:system tmp.skill

    ## モーション生成用のマーカー
        summon marker ~ ~ ~ {Tags:[skill_tmp]}
        ### プレイヤーに合わせる
            rotate @n[tag=skill_tmp] ~ ~

        ### 入力で分岐して角度を設定
            execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} as @n[tag=skill_tmp] at @s run rotate @s ~ ~-45

            execute \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:false}}}} \
                    as @n[tag=skill_tmp] at @s run rotate @s ~-90 ~
            execute \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} \
                    as @n[tag=skill_tmp] at @s run rotate @s ~-45 ~

            execute \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:false}}}} \
                    as @n[tag=skill_tmp] at @s run rotate @s ~90 ~
            execute \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} \
                if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} \
                    as @n[tag=skill_tmp] at @s run rotate @s ~45 ~

        ### 生成
            #### 
                execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:false}}} at @n[tag=skill_tmp] rotated ~ ~-15 run function system:function/angle_to_vec3/input {scale:1.0}
            #### 
                execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} at @n[tag=skill_tmp] rotated ~ -15 run function system:function/angle_to_vec3/input {scale:2.5}
                execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} at @n[tag=skill_tmp] rotated ~ -60 run function system:function/angle_to_vec3/input {scale:1.25}
        

    ## モーション与える
        function #p_motion:xyz

    ## 音
        playsound entity.breeze.jump player @a ~ ~ ~ 1.0 1.0 0.0

    ## particle
        particle small_gust ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a
        particle gust ~ ~ ~ 0.0 0.0 0.0 0.0 1 force @a

        execute rotated as @n[tag=skill_tmp] run function system:player/skill/blink/particle

    #### 用済みなので殺す
        kill @e[tag=skill_tmp]