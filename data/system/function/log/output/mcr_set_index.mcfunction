# log/output/mcr_set_index
    ## ログのタイプを設定
        $data modify storage .:log output.type set value "$(type)"
        $scoreboard players set #tmp0 log $(coef)
    ## indexを増減
        $execute if score #tmp0 log matches 0 store result storage .:log output.index int 1.0 run data get storage .:log $(type)
        execute store result score #tmp1 log run data get storage .:log output.index
        execute store result storage .:log output.index int 1.0 run scoreboard players operation #tmp1 log += #tmp0 log
        execute if score #tmp1 log matches ..-1 run data modify storage .:log output.index set value 0
    ## data get へ
        function system:log/output/mcr_get_data with storage .:log output