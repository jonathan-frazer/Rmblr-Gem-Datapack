#Summon Axe
data modify storage mob_gem:rotation yaw set from entity @s Rotation[0]
data modify storage mob_gem:rotation pitch set from entity @s Rotation[1]
execute at @s anchored eyes positioned ~ ~-1 ~ run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/2_summon_axe with storage mob_gem:rotation