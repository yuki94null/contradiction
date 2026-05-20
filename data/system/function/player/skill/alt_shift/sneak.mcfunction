
$kill @e[tag=alt_shift_anchor,nbt={data:{UUID:$(UUID)}}]

summon text_display ~ ~ ~ {Tags:[alt_shift_anchor,tmp]}

data modify entity @n[tag=alt_shift_anchor] data.UUID set from entity @s UUID
rotate @n[tag=alt_shift_anchor] ~ ~

tag @n[tag=alt_shift_anchor] remove tmp