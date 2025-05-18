#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 15

#Potion Effects
effect give @s strength 5 3 false
effect give @s speed 5 3 false
effect give @s haste 1 10 true

#Tag
tag @s add mbGemVexCharge

#Sound
execute at @s run playsound entity.vex.charge master @a[distance=..12] ~ ~ ~ 1 1 1
