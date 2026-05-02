# log/output/current/error
    ## init
        data remove storage .:log Output
        data modify storage .:log Output.Coef set value 1
    ## ログの種類をエラーにセット
        data modify storage .:log Output.Type set value "Error"
    ## Indexを一番新しいデータにセット
        execute store result storage .:log Output.Index int 0.9999999999 run data get storage .:log Error
    ## をもとにデータを取得
        function system:log/output/mcr_get_data with storage .:log Output