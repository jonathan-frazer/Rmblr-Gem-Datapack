#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10

#Potion Effects
effect give @s strength 5 3 false
effect give @s speed 5 3 false
effect give @s haste 1 10 true

#Tag
tag @s add mbGemVexCharge

#Sound
execute at @s run playsound entity.vex.charge master @a[distance=..12] ~ ~ ~ 1 1 1
