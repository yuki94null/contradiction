# log/error/add
    ## init
        data remove storage .:log tmp

    ## 成形
        $data modify storage .:log error append value {error_id:"$(error_id)",error_info:"$(error_info)"}

        ### それぞれデータを足していく
            function system:function/get_entity_type/input
            data modify storage .:log error[-1].entity_data.entity_type set from storage .:function entity_type
            data modify storage .:log error[-1].entity_data.Pos set from entity @s Pos
            data modify storage .:log error[-1].entity_data.Rrotation set from entity @s Rotation
            data modify storage .:log error[-1].entity_data.Tags set from entity @s Tags
            execute store result storage .:log error[-1].time double 1.0 run stopwatch query .:log 1.0

        ### メッセージ
            data modify storage .:log tmp set from storage .:log error[-1]
            data modify storage .:log tmp.entity_type set from storage .:log error[-1].entity_data.entity_type
            execute store result storage .:log tmp.num int 1.0 run data get storage .:log error
            data modify storage .:log tmp.text set value "エラーを検出しました"
            function system:log/mcr_console_message with storage .:log tmp

        ### プレイヤー以外
            execute if entity @s[type=!player] run return fail

            function system:function/get_player_name/input
            data modify storage .:log error[-1].entity_data.player_name set from storage .:function player_name
            data modify storage .:log error[-1].entity_data.Inventory set from entity @s Inventory
            data modify storage .:log error[-1].entity_data.equipment set from entity @s equipment