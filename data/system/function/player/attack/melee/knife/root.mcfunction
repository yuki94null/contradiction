# player/attack/melee/knife/root
    ## slash particle
        data modify storage .:function slash_particle set value {pitch:45,yaw:15,r:3,particle:"minecraft:dust{scale:0.5f,color:[0.3686f,0.7725f,1f]}"}
        function system:function/slash_particle/input
    ## sound
        playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 0.75 2 0.0