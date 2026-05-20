# player/select_skill
    ##
        $data modify storage .:system player[{UUID:"$(UUID)"}].skill set value "$(skill)"

    ## メッセージ
        $tellraw @s [\
            {"translate":"set_skill",with:[{"translate":"$(skill)","color":gold}]}\
        ]