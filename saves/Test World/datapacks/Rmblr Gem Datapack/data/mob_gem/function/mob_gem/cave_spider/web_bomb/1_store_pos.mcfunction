#Summon Pointers
execute rotated as @s run summon area_effect_cloud ^0.1 ^ ^0.72 {CustomName:'{"text":"webThrowPtrL"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^ ^ ^0.86 {CustomName:'{"text":"webThrowPtrM"}',Duration:1}
execute rotated as @s run summon area_effect_cloud ^-0.1 ^ ^0.72 {CustomName:'{"text":"webThrowPtrR"}',Duration:1}

#Data Modify
data modify storage mob_gem:auxillary caveSpider.webPos.L set from entity @n[type=area_effect_cloud,distance=..2.5,name="webThrowPtrL"] Pos
data modify storage mob_gem:auxillary caveSpider.webPos.M set from entity @n[type=area_effect_cloud,distance=..2.5,name="webThrowPtrM"] Pos
data modify storage mob_gem:auxillary caveSpider.webPos.R set from entity @n[type=area_effect_cloud,distance=..2.5,name="webThrowPtrR"] Pos