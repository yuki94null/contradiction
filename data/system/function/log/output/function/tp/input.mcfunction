# log/output/function/tp/input
    ## 現場を荒らさないようにスペクテイター
        gamemode spectator @s

    ## 既存のデータはintなのでdoubleの元データからコピーしなおし
        data modify storage .:log Output.x set from storage .:log Output.EntityData.Pos[0]
        data modify storage .:log Output.y set from storage .:log Output.EntityData.Pos[1]
        data modify storage .:log Output.z set from storage .:log Output.EntityData.Pos[2]
        data modify storage .:log Output.rx set from storage .:log Output.EntityData.Rotation[0]
        data modify storage .:log Output.ry set from storage .:log Output.EntityData.Rotation[1]
    ## テレポート
        function system:log/output/function/tp/mcr with storage .:log Output