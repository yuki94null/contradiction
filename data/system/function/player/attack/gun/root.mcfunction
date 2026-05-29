# player/attack/gun/root
    ## 音ならす
        execute unless score @s bullet_count matches 2.. run \
                playsound block.dispenser.fail player @a ~ ~ ~ 1.0 1.0 0.0
        execute unless score @s bullet_count matches 4.. run \
                playsound block.fire.extinguish player @a ~ ~ ~ 1.0 2.0 0.0

    ## 弾なかったらreturn
        execute unless score @s bullet_count matches 1.. run return fail

    ## 同時発射数をスコアに
        execute store result score $tmp global run data get storage .:game tmp.weapon.simu_shots
        ### 負荷検証の4倍化
            # execute store result score $tmp global run data get storage .:game tmp.weapon.simu_shots 4.0
    ## 地上スニークで拡散減らす
        execute if predicate {condition:"entity_properties","entity":"this",predicate:{flags:{is_on_ground:true,is_sneaking:true}}} store result storage .:game tmp.weapon.diffusion_angle double 1.0 run data get storage .:game tmp.weapon.diffusion_angle 0.75
            
    #### 弾を出す
        $function system:player/attack/gun/$(kinds)/root
        function system:player/attack/gun/summon_bullet with storage .:game tmp.weapon

    ### 弾減らす
        scoreboard players remove @s bullet_count 1
        execute if data storage .:game Item.components."minecraft:custom_data".weapon{type:"gun"} \
            unless score @s gun_ct matches 1.. run \
                scoreboard players reset @s reload_time