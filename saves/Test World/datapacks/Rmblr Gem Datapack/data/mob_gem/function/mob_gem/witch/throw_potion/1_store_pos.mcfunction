#Summon Pointers
execute rotated as @s run summon area_effect_cloud ^0.1 ^ ^0.72 {CustomName:'{"text":"potionThrowPtrL"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^ ^ ^0.86 {CustomName:'{"text":"potionThrowPtrM"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^-0.1 ^ ^0.72 {CustomName:'{"text":"potionThrowPtrR"}',Duration:1}

#Data Modify
data modify storage mob_gem:auxillary Witch.potionPos.L set from entity @n[type=area_effect_cloud,distance=..2.5,name="potionThrowPtrL"] Pos
data modify storage mob_gem:auxillary Witch.potionPos.M set from entity @n[type=area_effect_cloud,distance=..2.5,name="potionThrowPtrM"] Pos
data modify storage mob_gem:auxillary Witch.potionPos.R set from entity @n[type=area_effect_cloud,distance=..2.5,name="potionThrowPtrR"] Pos