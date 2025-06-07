#Buffs
effect give @s strength 15 0 false
effect give @s speed 15 0 false
#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 20
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 16

#Playsound
execute at @s run playsound entity.player.burp master @a[distance=..12] ~ ~ ~ 1 1 1
execute at @s run playsound entity.zoglin.angry master @a[distance=..12] ~ ~ ~ 1 1 1