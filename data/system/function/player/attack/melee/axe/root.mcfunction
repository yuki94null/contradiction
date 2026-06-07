# player/attack/melee/root/root
    ## slash particle
        data modify storage .:function slash_particle set value {pitch:90,yaw:15,r:3.5,particle:"minecraft:dust{scale:0.5f,color:[0.3686f,0.7725f,1f]}"}
        function system:function/slash_particle/input
    ## sound
        playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1.0 1 0.0