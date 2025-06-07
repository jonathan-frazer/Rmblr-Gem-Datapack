#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 12

#Playsound
playsound entity.egg.throw master @a[distance=..16] ~ ~ ~ 1 0.8 1

#Summon Axe
data modify storage mob_gem:rotation yaw set from entity @s Rotation[0]
data modify storage mob_gem:rotation pitch set from entity @s Rotation[1]
execute at @s positioned ~ ~-0.75 ~ rotated ~ 0 run function mob_gem:mob_gem/vindicator/tomohawk_throw/1_summon_axe with storage mob_gem:rotation