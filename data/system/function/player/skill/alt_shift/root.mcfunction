say alt_shift

execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"player",input:{sneak:true}}}} run return run function system:player/skill/alt_shift/sneak with entity @s

execute unless score @s skill_charge matches 1.. run return fail
function system:player/skill/success with storage .:system tmp.skill

function system:player/skill/alt_shift/tp with entity @s