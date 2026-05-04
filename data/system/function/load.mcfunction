# load
    say loaded
    ## gamerule
        gamerule immediate_respawn true
    ## team 
        team add none "無し"
        team modify none color gray
        team modify none friendlyFire false
        team modify none collisionRule always
        team modify none nametagVisibility never
        team modify none seeFriendlyInvisibles false
        team add melee "近距離"
        team modify melee color red
        team modify melee friendlyFire false
        team modify melee collisionRule always
        team modify melee nametagVisibility never
        team modify melee seeFriendlyInvisibles false
        team add gun "遠距離"
        team modify gun color blue
        team modify gun friendlyFire false
        team modify gun collisionRule always
        team modify gun nametagVisibility never
        team modify gun seeFriendlyInvisibles false
    ## scoreboard
        ### add
            scoreboard objectives add global dummy
            scoreboard objectives add log dummy
            scoreboard objectives add leave custom:leave_game
            scoreboard objectives add kill playerKillCount
            scoreboard objectives add kill_with_melee dummy
            scoreboard objectives add kill_with_gun dummy
            scoreboard objectives add melee_ct dummy
            scoreboard objectives add gun_ct dummy
        ### set


    ## storage
        data merge storage .:system {}
        data modify storage .:system bool.true set value true
        data modify storage .:system bool.True set value true
        data modify storage .:system bool.1b set value true
        data modify storage .:system bool.1 set value true
        data remove storage .:map maps
        data modify storage .:map maps append value \
            {map:0,name:"test_0",points:[\
                {type:"center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {type:"spawn_0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {type:"spawn_1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {type:"spawn_2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {type:"spawn_3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        data modify storage .:map maps append value \
            {map:1,name:"test_1",points:[\
                {type:"center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {type:"spawn_0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {type:"spawn_1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {type:"spawn_2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {type:"spawn_3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        data modify storage .:map maps append value \
            {map:2,name:"test_2",points:[\
                {type:"center",Pos:{x:-144.00, y:-59.00, z:-32.0}},\
                {type:"spawn_0",Pos:{x:0d,y:0d,z:45.0d,ry:180d}},\
                {type:"spawn_1",Pos:{x:0d,y:0d,z:-45.0d,ry:0d}},\
                {type:"spawn_2",Pos:{x:29.0d,y:0d,z:0d,ry:90d}},\
                {type:"spawn_3",Pos:{x:-29.0d,y:0d,z:0d,ry:-90d}}\
                ]\
            }
        
        data remove storage .:system weapon
        data modify storage .:system weapon append value {loadout:knight,melee:{kinds:"spear",melee_damage:1.0,melee_ct:8,km_bounding:{x_plus:0.5d,z_plus:7.5d,x_minus:0.5d}},gun:{kinds:"pistle",gun_ct:4}}
        data modify storage .:system weapon append value {loadout:breaker,melee:{kinds:"axe",melee_damage:1.0,melee_ct:10,km_bounding:{x_plus:0.5d,z_plus:3.5d,x_minus:0.5d}},gun:{kinds:"sg",gun_ct:15}}
        data modify storage .:system weapon append value {loadout:duelist,melee:{kinds:"sword",melee_damage:1.0,melee_ct:6,km_bounding:{x_plus:0.5d,z_plus:4.0d,x_minus:0.5d}},gun:{kinds:"smg",gun_ct:1}}
        data modify storage .:system weapon append value {loadout:suppressor,melee:{kinds:"scythe",melee_damage:1.0,melee_ct:4,km_bounding:{x_plus:2.0d,z_plus:3.0d,x_minus:2.0d}},gun:{kinds:"ar",gun_ct:3}}
        data modify storage .:system weapon append value {loadout:assassin,melee:{kinds:"knife",melee_damage:1.0,melee_ct:2,km_bounding:{x_plus:0.5d,z_plus:3.0d,x_minus:0.5d}},gun:{kinds:"sr",gun_ct:30}}
    ## stopwatch
        stopwatch create .:log