# load
    say loaded

    ## scoreboard

        ### add
            scoreboard objectives add global dummy
            scoreboard objectives add log dummy

        ### set


    ## storage
        data merge storage .:system {}
        data modify storage .:map Maps[{Map:0}] set value {Name:"Test",Points:[{type:"Center",Pos:{x:-144.00, y:-59.00, z:-32.0}},{type:"Spawn0",Pos:{x:0d,y:0d,z:43.0d,ry:180d}},{type:"Spawn0",Pos:{x:0d,y:0d,z:-43.0d,ry:0d}}]}

    ## stopwatch
        stopwatch create .:log