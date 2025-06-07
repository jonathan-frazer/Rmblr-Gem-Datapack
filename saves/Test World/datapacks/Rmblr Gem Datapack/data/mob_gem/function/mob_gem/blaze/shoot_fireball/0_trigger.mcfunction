#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 12
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 6

#Activate Volley
scoreboard players set @s mbGem_blazeVolley 1

#Activate Sound
execute at @s run playsound entity.blaze.burn master @a[distance=..12] ~ ~ ~ 1 0.85 1