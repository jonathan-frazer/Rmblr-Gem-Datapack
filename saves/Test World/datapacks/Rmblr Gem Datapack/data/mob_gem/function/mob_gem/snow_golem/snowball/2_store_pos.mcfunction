execute rotated as @s run summon area_effect_cloud ^ ^ ^2 {CustomName:'{"text":"snowthrowPtr"}',Duration:1}
data modify storage mob_gem:auxillary snowGolem.throwPos set from entity @n[type=area_effect_cloud,distance=..2,name="snowthrowPtr"] Pos
