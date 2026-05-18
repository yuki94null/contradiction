data remove storage .:system tmp

$data modify storage .:system tmp.gun set from storage .:system weapon[{gun:{kinds:"$(gun)"}}].gun
$data modify storage .:system tmp.gun.loadout set from storage .:system weapon[{gun:{kinds:"$(gun)"}}].loadout
data modify storage .:system tmp.gun.type set value "gun"

$data modify storage .:system tmp.melee set from storage .:system weapon[{melee:{kinds:"$(melee)"}}].melee
$data modify storage .:system tmp.melee.loadout set from storage .:system weapon[{melee:{kinds:"$(melee)"}}].loadout
data modify storage .:system tmp.melee.type set value "melee"