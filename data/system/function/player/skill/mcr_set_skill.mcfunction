# player/select_skill
    ## スキル名をセット
        $data modify storage .:system player[{UUID:"$(UUID)"}].skill set value "$(skill)"

    ## メッセージ
        $tellraw @s [\
            {"translate":"set_skill",with:[{"translate":"$(skill)","color":gold}]}\
        ]