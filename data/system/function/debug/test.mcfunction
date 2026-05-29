particle end_rod ~ ~ ~

execute unless entity @s[distance=..10] run return fail
execute positioned ^0.5 ^ ^ run function system:debug/test