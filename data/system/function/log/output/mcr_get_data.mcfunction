# log/output/mcr_get_data
    ## init
        data remove storage .:log Output
        scoreboard players reset #Tmp log
        ### 消しちゃったので再設定
            $data modify storage .:log Output.Index set value $(Index)
            $data modify storage .:log Output.Type set value "$(Type)"
    ## 取得
        $execute store success score #Tmp log run data modify storage .:log Output merge from storage .:log $(Type)[$(Index)]

        $execute if score #Tmp log matches 0 if score #Tmp0 log matches -1 run return run function system:log/output/mcr_set_index {Type:"$(Type)",Coef:"1"}
        $execute if score #Tmp log matches 0 if score #Tmp0 log matches 1 run return run function system:log/output/mcr_set_index {Type:"$(Type)",Coef:"-1"}
        $execute if score #Tmp log matches 0 run return run function system:log/output/mcr_set_index {Type:"$(Type)",Coef:"0"}
        
        data modify storage .:log Output.EntityType set from storage .:log Output.EntityData.EntityType
        data modify storage .:log Output.PlayerName set value "None"
        data modify storage .:log Output.PlayerName set from storage .:log Output.EntityData.PlayerName
        data modify storage .:log Output.Tag set value "None"
        data modify storage .:log Output.Tag set from storage .:log Output.EntityData.Tags[-1]
        
        execute store result storage .:log Output.x int 1.0 run data get storage .:log Output.EntityData.Pos[0]
        execute store result storage .:log Output.y int 1.0 run data get storage .:log Output.EntityData.Pos[1]
        execute store result storage .:log Output.z int 1.0 run data get storage .:log Output.EntityData.Pos[2]
        execute store result storage .:log Output.rx int 1.0 run data get storage .:log Output.EntityData.Rotation[0]
        execute store result storage .:log Output.ry int 1.0 run data get storage .:log Output.EntityData.Rotation[1]
    ## 表示
        function system:log/output/mcr_tellraw with storage .:log Output