say bailout

execute if entity @s[tag=used_bailout] run return run function system:player/skill/bailout/second

execute unless score @s skill_charge matches 1.. run return fail
function system:player/skill/success with storage .:system tmp.skill

tag @s add used_bailout
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:false}}} rotated ~180 -20 run function system:function/angle_to_vec3/input {scale:2.0}
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_ground:true}}} rotated ~180 -20 run function system:function/angle_to_vec3/input {scale:3.0}

function #p_motion:xyz