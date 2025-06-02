#Summon Pointers
execute rotated as @s run summon area_effect_cloud ^0.1 ^ ^0.72 {CustomName:'{"text":"skullThrowPtrL"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^ ^ ^1.75 {CustomName:'{"text":"skullThrowPtrM"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^-0.1 ^ ^0.72 {CustomName:'{"text":"skullThrowPtrR"}',Duration:1}

#Data Modify
data modify storage mob_gem:auxillary wither.skullPos.L set from entity @n[type=area_effect_cloud,distance=..2.5,name="skullThrowPtrL"] Pos
data modify storage mob_gem:auxillary wither.skullPos.M set from entity @n[type=area_effect_cloud,distance=..2.5,name="skullThrowPtrM"] Pos
data modify storage mob_gem:auxillary wither.skullPos.R set from entity @n[type=area_effect_cloud,distance=..2.5,name="skullThrowPtrR"] Pos