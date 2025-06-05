#Buffs
effect give @s strength 15 0 false
effect give @s speed 15 0 false

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 15

#Playsound
execute at @s run playsound entity.player.burp master @a[distance=..12] ~ ~ ~ 1 1 1
execute at @s run playsound entity.hoglin.angry master @a[distance=..12] ~ ~ ~ 1 1 1