# log/output/mcr_set_index
    ## ログのタイプを設定
        $data modify storage .:log Output.Type set value "$(Type)"
        $scoreboard players set #Tmp0 log $(Coef)
    ## Indexを増減
        $execute if score #Tmp0 log matches 0 store result storage .:log Output.Index int 1.0 run data get storage .:log $(Type)
        execute store result score #Tmp1 log run data get storage .:log Output.Index
        execute store result storage .:log Output.Index int 1.0 run scoreboard players operation #Tmp1 log += #Tmp0 log
        execute if score #Tmp1 log matches ..-1 run data modify storage .:log Output.Index set value 0
    ## data get へ
        function system:log/output/mcr_get_data with storage .:log Output