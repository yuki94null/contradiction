execute unless score @s skill_ct matches ..0 run return run scoreboard players remove @s skill_ct 1

$execute unless score @s skill_charge matches $(max_charge).. run scoreboard players add @s skill_charge 1
$execute unless score @s skill_charge matches $(max_charge).. run scoreboard players set @s skill_ct $(skill_ct)