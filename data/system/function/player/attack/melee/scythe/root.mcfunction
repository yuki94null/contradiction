# player/attack/melee/scythe/root
    ## slash particle
        data modify storage .:function slash_particle set value {pitch:15,yaw:45,r:3,particle:"minecraft:dust{scale:0.5f,color:[0.3686f,0.7725f,1f]}"}
        function system:function/slash_particle/input
    ## sound
        playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.0 0.5 0.0