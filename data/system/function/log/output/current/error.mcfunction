# log/output/current/error
    ## init
        data remove storage .:log output
        data modify storage .:log output.coef set value 1
    ## ログの種類をエラーにセット
        data modify storage .:log output.type set value "error"
    ## indexを一番新しいデータにセット
        execute store result storage .:log output.index int 0.9999999999 run data get storage .:log error
    ## をもとにデータを取得
        function system:log/output/mcr_get_data with storage .:log output