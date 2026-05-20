say blink

execute unless score @s skill_charge matches 1.. run return fail

function system:player/skill/success with storage .:system tmp.skill


summon marker ~ ~ ~ {Tags:[skill_tmp]}
rotate @n[tag=skill_tmp] ~ ~

#
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} as @n[tag=skill_tmp] at @s run rotate @s ~ ~-45

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

execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:false}}} at @n[tag=skill_tmp] rotated ~ ~-15 run function system:function/angle_to_vec3/input {scale:1.0}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:false}}}} at @n[tag=skill_tmp] rotated ~ -15 run function system:function/angle_to_vec3/input {scale:2.5}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} at @n[tag=skill_tmp] rotated ~ -60 run function system:function/angle_to_vec3/input {scale:1.25}
kill @e[tag=skill_tmp]
function #p_motion:xyz


