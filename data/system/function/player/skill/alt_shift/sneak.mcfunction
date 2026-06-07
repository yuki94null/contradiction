# player/skill/alt_shift/sneak
    ## 既存のアンカーを消す
        $kill @e[tag=alt_shift_anchor,nbt={data:{UUID:$(UUID)}}]

    ## アンカー設置
        summon text_display ~ ~ ~ {Tags:[alt_shift_anchor,tmp]}
    ## アンカーの向き合わせる
        rotate @n[tag=alt_shift_anchor] ~ ~

    ## UUID保存
        data modify entity @n[tag=alt_shift_anchor] data.UUID set from entity @s UUID

    ## tmp消す
        tag @n[tag=alt_shift_anchor] remove tmp