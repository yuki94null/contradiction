# log/error/add
    ## init
        data remove storage .:log Tmp

    ## 成形
        $data modify storage .:log Error append value {ErrorID:"$(ErrorID)",ErrorInfo:"$(ErrorInfo)"}

        
        ### それぞれデータを足していく
            function system:function/get_entity_type/input
            data modify storage .:log Error[-1].EntityData.EntityType set from storage .:function EntityType
            data modify storage .:log Error[-1].EntityData.Pos set from entity @s Pos
            data modify storage .:log Error[-1].EntityData.Rotation set from entity @s Rotation
            data modify storage .:log Error[-1].EntityData.Tags set from entity @s Tags
            execute store result storage .:log Error[-1].Time double 1.0 run stopwatch query .:log 1.0

        ### メッセージ
            data modify storage .:log Tmp set from storage .:log Error[-1]
            data modify storage .:log Tmp.EntityType set from storage .:log Error[-1].EntityData.EntityType
            execute store result storage .:log Tmp.Num int 1.0 run data get storage .:log Error
            function system:log/error/send_error_message with storage .:log Tmp

        ### プレイヤー以外
            execute if entity @s[type=!player] run return fail

            function system:function/get_player_name/input
            data modify storage .:log Error[-1].EntityData.PlayerName set from storage .:function PlayerName
            data modify storage .:log Error[-1].EntityData.Inventory set from entity @s Inventory
            data modify storage .:log Error[-1].EntityData.equipment set from entity @s equipment


    
