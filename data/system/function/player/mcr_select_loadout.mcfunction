# player/select_loadout
    ##
        $data modify storage .:system player[{UUID:"$(UUID)"}].melee set value "$(melee)"
        $data modify storage .:system player[{UUID:"$(UUID)"}].gun set value "$(gun)"

    ## メッセージ
        $tellraw @s [\
            {"translate":"select_loadout",with:[{"translate":"$(loadout)","color":gold}]},{"text":"\n        ","color":white},\
            {"translate":"melee","color":red},{"text":": \"","color":white},{"translate":"$(melee)","color":green},{"text":"\" ","color":white},\
            {"translate":"gun","color":blue},{"text":": \"","color":white},{"translate":"$(gun)","color":green},{"text":"\"","color":white}\
        ]