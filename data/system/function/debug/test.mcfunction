$tellraw @s "$(x)"

tellraw @s {nbt:"tmp.debug",storage:".:system"}
$data modify storage .:system tmp.debug set value $(x)
tellraw @s {nbt:"tmp.debug[2]",storage:".:system"}