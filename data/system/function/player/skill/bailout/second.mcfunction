tag @s remove used_bailout

tp 0.0 0.0 0.0
tp ~ ~ ~

summon marker ~ ~ ~ {Tags:[skill_tmp]}
rotate @n[tag=skill_tmp] ~ ~

#
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{backward:true}}}} as @n[tag=skill_tmp] at @s run rotate @s ~180 ~

execute \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:false}}}} \
        as @n[tag=skill_tmp] at @s run rotate @s ~-90 ~
execute \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{left:true}}}} \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} \
        as @n[tag=skill_tmp] at @s run rotate @s ~-45 ~

execute \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:false}}}} \
        as @n[tag=skill_tmp] at @s run rotate @s ~90 ~
execute \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{right:true}}}} \
    if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{forward:true}}}} \
        as @n[tag=skill_tmp] at @s run rotate @s ~45 ~

execute at @n[tag=skill_tmp] rotated ~ 0 run function system:function/angle_to_vec3/input {scale:3.0}
kill @e[tag=skill_tmp]
function #p_motion:xyz

    ## 音
        playsound minecraft:entity.breeze.hurt player @a ~ ~ ~ 1.0 1 0.0