# player/skill/accele/root
    ## スキル残数がなければリターン
        execute unless score @s skill_charge matches 1.. run return fail

    ## スキル発動時の汎用ファンクション
        function system:player/skill/success with storage .:system tmp.skill

    ## バニラのエフェクト
        effect give @s speed 5 4 true