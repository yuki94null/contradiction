# load
    say loaded
    ## gamerule
        gamerule immediate_respawn true
        gamerule keep_inventory true
    ## team 
        team add none "無し"
        team modify none color gray
        team modify none friendlyFire false
        team modify none collisionRule always
        team modify none nametagVisibility never
        team modify none seeFriendlyInvisibles false
        team add join "エントリー済み"
        team modify join color green
        team modify join friendlyFire false
        team modify join collisionRule always
        team modify join nametagVisibility never
        team modify join seeFriendlyInvisibles false
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
            scoreboard objectives add time dummy
            scoreboard objectives add log dummy
            scoreboard objectives add leave custom:leave_game
            scoreboard objectives add death deathCount
            scoreboard objectives add kill playerKillCount
            scoreboard objectives add kill_with_melee dummy
            scoreboard objectives add kill_with_gun dummy
            scoreboard objectives add melee_ct dummy
            scoreboard objectives add gun_ct dummy
            scoreboard objectives add bullet_life_time dummy
            scoreboard objectives add skill_ct dummy
            scoreboard objectives add skill_charge dummy
            scoreboard objectives add sound dummy
        ### set

            scoreboard players set $bullet_count_limit global 30


    ## storage
        data merge storage .:system {}
        data modify storage .:system bool.true set value true
        data modify storage .:system bool.True set value true
        data modify storage .:system bool.1b set value true
        data modify storage .:system bool.1 set value true
        data modify storage .:system setting.max_health set value 40


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
        ## ロードアウト 一応melee gun別で設定しても動作します
            data remove storage .:system weapon
            data modify storage .:system weapon append value {loadout:knight,melee:{kinds:"spear",melee_damage:1.0,melee_ct:8,add_bullet:2,km_bounding:{x_plus:0.5d,z_plus:7.5d,x_minus:0.5d}},gun:{kinds:"pistle",fall_angle:3,diffusion_angle:2,bullet_damage:5,bullet_speed:5,gun_ct:4,reload_time:5,portable_bullet:16,magazine:8,simu_shots:1}}
            data modify storage .:system weapon append value {loadout:breaker,melee:{kinds:"axe",melee_damage:1.0,melee_ct:10,add_bullet:3,km_bounding:{x_plus:0.5d,z_plus:3.5d,x_minus:0.5d}},gun:{kinds:"sg",fall_angle:3,diffusion_angle:9,bullet_damage:3,bullet_speed:4,gun_ct:15,reload_time:10,portable_bullet:6,magazine:3,simu_shots:6}}
            data modify storage .:system weapon append value {loadout:duelist,melee:{kinds:"sword",melee_damage:1.0,melee_ct:6,add_bullet:2,km_bounding:{x_plus:0.5d,z_plus:4.0d,x_minus:0.5d}},gun:{kinds:"smg",fall_angle:2,diffusion_angle:6,bullet_damage:2,bullet_speed:8,gun_ct:1,reload_time:15,portable_bullet:10,magazine:15,simu_shots:1}}
            data modify storage .:system weapon append value {loadout:suppressor,melee:{kinds:"scythe",melee_damage:1.0,melee_ct:4,add_bullet:3,km_bounding:{x_plus:2.0d,z_plus:3.0d,x_minus:2.0d}},gun:{kinds:"ar",fall_angle:1,diffusion_angle:3,bullet_damage:4,bullet_speed:16,gun_ct:3,reload_time:20,portable_bullet:10,magazine:10,simu_shots:1}}
            data modify storage .:system weapon append value {loadout:assassin,melee:{kinds:"knife",melee_damage:1.0,melee_ct:2,add_bullet:1,km_bounding:{x_plus:0.5d,z_plus:3.0d,x_minus:0.5d}},gun:{kinds:"sr",fall_angle:0,diffusion_angle:1,bullet_damage:15,bullet_speed:32,gun_ct:30,reload_time:60,portable_bullet:3,magazine:3,simu_shots:1}}

        ## 移動スキル
            data remove storage .:system skill
            data modify storage .:system skill append value {max_charge:2,skill_ct:100,kinds:"blink"}
            data modify storage .:system skill append value {max_charge:1,skill_ct:200,kinds:"alt_shift"}
            data modify storage .:system skill append value {max_charge:1,skill_ct:200,kinds:"bailout"}
            data modify storage .:system skill append value {max_charge:1,skill_ct:200,kinds:"fade_assult",range:120}
            data modify storage .:system skill append value {max_charge:1,skill_ct:160,kinds:"accele",time:80}

        ## サウンド
            data remove storage .:system music
            data modify storage .:system music.project_093 set value {loop:true,tick:1067}



    ## summon
        kill @e[tag=system]
        summon text_display 5.00 5.00 16.00 {Tags:[system,ui_marker,ui_loadout],Rotation:[-90f,0f],data:{loadout:"knight"}}
        summon text_display 5.00 5.00 23.00 {Tags:[system,ui_marker,ui_loadout],Rotation:[-90f,0f],data:{loadout:"breaker"}}
        summon text_display 5.00 5.00 30.00 {Tags:[system,ui_marker,ui_loadout],Rotation:[-90f,0f],data:{loadout:"duelist"}}
        summon text_display 5.00 5.00 37.00 {Tags:[system,ui_marker,ui_loadout],Rotation:[-90f,0f],data:{loadout:"suppressor"}}
        summon text_display 5.00 5.00 44.00 {Tags:[system,ui_marker,ui_loadout],Rotation:[-90f,0f],data:{loadout:"assassin"}}

        summon text_display 16.00 5.00 5.00 {Tags:[system,ui_marker,ui_skill],Rotation:[0f,0f],data:{skill:"blink"}}
        summon text_display 23.00 5.00 5.00 {Tags:[system,ui_marker,ui_skill],Rotation:[0f,0f],data:{skill:"alt_shift"}}
        summon text_display 30.00 5.00 5.00 {Tags:[system,ui_marker,ui_skill],Rotation:[0f,0f],data:{skill:"bailout"}}
        summon text_display 37.00 5.00 5.00 {Tags:[system,ui_marker,ui_skill],Rotation:[0f,0f],data:{skill:"fade_assult"}}
        summon text_display 44.00 5.00 5.00 {Tags:[system,ui_marker,ui_skill],Rotation:[0f,0f],data:{skill:"accele"}}
        
    ## stopwatch
        stopwatch create .:log