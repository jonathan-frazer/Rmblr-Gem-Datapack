#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 12

#Playsound
playsound entity.egg.throw master @a[distance=..16] ~ ~ ~ 1 0.8 1

#Summon Axe Pointer
execute at @s run summon area_effect_cloud ~ ~ ~ {CustomName:'{"text":"tomohawkIAligner"}',Duration:1}
execute at @s run tp @n[type=area_effect_cloud,distance=..1,name="tomohawkIAligner"] ~ ~ ~ ~-90 ~ 
execute at @s as @n[type=area_effect_cloud,distance=..1,name="tomohawkIAligner"] run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/1_align_axe