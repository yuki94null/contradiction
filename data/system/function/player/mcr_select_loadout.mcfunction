# player/select_loadout
    ##
        $data modify storage .:system Player[{UUID:"$(UUID)"}].Melee set value "$(Melee)"
        $data modify storage .:system Player[{UUID:"$(UUID)"}].Gun set value "$(Gun)"

    ## メッセージ
        $tellraw @s [\
            {"translate":"selectloadout",with:[{"translate":"$(Loadout)","color":gold}]},{"text":"\n        ","color":white},\
            {"translate":"Melee","color":red},{"text":": \"","color":white},{"translate":"$(Melee)","color":green},{"text":"\" ","color":white},\
            {"translate":"Gun","color":blue},{"text":": \"","color":white},{"translate":"$(Gun)","color":green},{"text":"\"","color":white}\
        ]