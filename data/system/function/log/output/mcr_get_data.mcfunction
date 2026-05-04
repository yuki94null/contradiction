# log/output/mcr_get_data
    ## init
        data remove storage .:log output
        scoreboard players reset #tmp log
        ### 消しちゃったので再設定
            $data modify storage .:log output.index set value $(index)
            $data modify storage .:log output.type set value "$(type)"
    ## 取得
        $execute store success score #tmp log run data modify storage .:log output merge from storage .:log $(type)[$(index)]

        $execute if score #tmp log matches 0 if score #tmp0 log matches -1 run return run function system:log/output/mcr_set_index {type:"$(type)",coef:"1"}
        $execute if score #tmp log matches 0 if score #tmp0 log matches 1 run return run function system:log/output/mcr_set_index {type:"$(type)",coef:"-1"}
        $execute if score #tmp log matches 0 run return run function system:log/output/mcr_set_index {type:"$(type)",coef:"0"}
        
        data modify storage .:log output.entity_type set from storage .:log output.entity_data.entity_type
        data modify storage .:log output.player_name set value "none"
        data modify storage .:log output.player_name set from storage .:log output.entity_data.player_name
        data modify storage .:log output.tag set value "none"
        data modify storage .:log output.tag set from storage .:log output.entity_data.Tags[-1]
        
        execute store result storage .:log output.x int 1.0 run data get storage .:log output.entity_data.Pos[0]
        execute store result storage .:log output.y int 1.0 run data get storage .:log output.entity_data.Pos[1]
        execute store result storage .:log output.z int 1.0 run data get storage .:log output.entity_data.Pos[2]
        execute store result storage .:log output.rx int 1.0 run data get storage .:log output.entity_data.Rotation[0]
        execute store result storage .:log output.ry int 1.0 run data get storage .:log output.entity_data.Rotation[1]
    ## 表示
        function system:log/output/mcr_tellraw with storage .:log output