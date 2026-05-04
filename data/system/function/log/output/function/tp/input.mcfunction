# log/output/function/tp/input
    ## 現場を荒らさないようにスペクテイター
        gamemode spectator @s

    ## 既存のデータはintなのでdoubleの元データからコピーしなおし
        data modify storage .:log output.x set from storage .:log output.entity_data.Pos[0]
        data modify storage .:log output.y set from storage .:log output.entity_data.Pos[1]
        data modify storage .:log output.z set from storage .:log output.entity_data.Pos[2]
        data modify storage .:log output.rx set from storage .:log output.entity_data.Rotation[0]
        data modify storage .:log output.ry set from storage .:log output.entity_data.Rotation[1]
    ## テレポート
        function system:log/output/function/tp/mcr with storage .:log output