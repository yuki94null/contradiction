# load
    say loaded
    ## gamerule
        gamerule immediate_respawn true
    ## team 
        team add None "無し"
        team modify None color gray
        team modify None friendlyFire false
        team modify None collisionRule always
        team modify None nametagVisibility never
        team modify None seeFriendlyInvisibles false
        team add Melee "近距離"
        team modify Melee color red
        team modify Melee friendlyFire false
        team modify Melee collisionRule always
        team modify Melee nametagVisibility never
        team modify Melee seeFriendlyInvisibles false
        team add Gun "遠距離"
        team modify Gun color blue
        team modify Gun friendlyFire false
        team modify Gun collisionRule always
        team modify Gun nametagVisibility never
        team modify Gun seeFriendlyInvisibles false
    ## scoreboard
        ### add
            scoreboard objectives add global dummy
            scoreboard objectives add log dummy
            scoreboard objectives add leave custom:leave_game
            scoreboard objectives add kill playerKillCount
            scoreboard objectives add killasmelee dummy
            scoreboard objectives add killasgun dummy
            scoreboard objectives add attackct dummy
        ### set


    ## storage
        data merge storage .:system {}
        data modify storage .:system Bool.true set value true
        data modify storage .:system Bool.True set value true
        data modify storage .:system Bool.1b set value true
        data modify storage .:system Bool.1 set value true
        data remove storage .:map Maps
        data modify storage .:map Maps append value \
            {Map:0,Name:"Test0",Points:[\
                {Type:"Center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {Type:"Spawn0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {Type:"Spawn1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {Type:"Spawn2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {Type:"Spawn3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        data modify storage .:map Maps append value \
            {Map:1,Name:"Test1",Points:[\
                {Type:"Center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {Type:"Spawn0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {Type:"Spawn1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {Type:"Spawn2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {Type:"Spawn3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        data modify storage .:map Maps append value \
            {Map:2,Name:"Test2",Points:[\
                {Type:"Center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {Type:"Spawn0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {Type:"Spawn1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {Type:"Spawn2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {Type:"Spawn3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        
        data remove storage .:system Weapon
        data modify storage .:system Weapon append value {Loadout:Knight,Melee:"Spear",Gun:"Pistle",MeleeDamage:1.0,AttackCT:8,km_bounding:{x_plus:0.5d,z_plus:7.5d,x_minus:0.5d}}
        data modify storage .:system Weapon append value {Loadout:Breaker,Melee:"Axe",Gun:"SG",MeleeDamage:1.0,AttackCT:10,km_bounding:{x_plus:0.5d,z_plus:3.5d,x_minus:0.5d}}
        data modify storage .:system Weapon append value {Loadout:Duelist,Melee:"Sword",Gun:"SMG",MeleeDamage:1.0,AttackCT:6,km_bounding:{x_plus:0.5d,z_plus:4.0d,x_minus:0.5d}}
        data modify storage .:system Weapon append value {Loadout:Suppressor,Melee:"Scythe",Gun:"AR",MeleeDamage:1.0,AttackCT:4,km_bounding:{x_plus:2.0d,z_plus:3.0d,x_minus:2.0d}}
        data modify storage .:system Weapon append value {Loadout:Assassin,Melee:"Knife",Gun:"SR",MeleeDamage:1.0,AttackCT:2,km_bounding:{x_plus:0.5d,z_plus:3.0d,x_minus:0.5d}}

    ## stopwatch
        stopwatch create .:log