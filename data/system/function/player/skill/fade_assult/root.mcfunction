# skill/fade_assult/root
    ## スキル残数がなければリターン
        execute unless score @s skill_charge matches 1.. run return fail
    ## スキル発動時の汎用ファンクション
        function system:player/skill/success with storage .:system tmp.skill

    ## 自分タグ付け
        tag @s add skill_tmp

    ## 距離指定
        scoreboard players set $tmp global 120

    ## 再帰で特定してタグ付け
        execute anchored eyes positioned ^ ^ ^ run function system:player/skill/fade_assult/loop

    ## ヒットしたやつの位置に
        execute anchored eyes at @n[tag=fade_assult] positioned ^ ^ ^-1.0 unless block ~ ~ ~ #air positioned ^ ^ ^0.9999999999 facing entity @n[tag=fade_assult] feet run return run function system:player/skill/fade_assult/tp
        execute anchored eyes at @n[tag=fade_assult] positioned ^ ^ ^-2.0 unless block ~ ~ ~ #air positioned ^ ^ ^1.0 facing entity @n[tag=fade_assult] feet run return run function system:player/skill/fade_assult/tp
        execute anchored eyes at @n[tag=fade_assult] positioned ^ ^ ^-2.5 unless block ~ ~ ~ #air positioned ^ ^ ^0.5 facing entity @n[tag=fade_assult] feet run return run function system:player/skill/fade_assult/tp
        execute anchored eyes at @n[tag=fade_assult] positioned ^ ^ ^-2.5 facing entity @n[tag=fade_assult] feet run function system:player/skill/fade_assult/tp

    ## タグを外す
        tag @s remove skill_tmp