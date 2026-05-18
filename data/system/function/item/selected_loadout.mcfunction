function system:player/get_selected_loadout with entity @s

function system:item/mcr_loadout_data with storage .:system tmp

function system:item/text_melee with storage .:system tmp.melee
function system:item/text_gun with storage .:system tmp.gun

data modify storage .:system tmp.melee.pass set value "replace entity @s hotbar.0"
data modify storage .:system tmp.gun.pass set value "replace entity @s hotbar.1"

data modify storage .:system tmp.melee.color set value "red"
data modify storage .:system tmp.gun.color set value "blue"

function system:item/mcr_weapon with storage .:system tmp.melee
function system:item/mcr_weapon with storage .:system tmp.gun