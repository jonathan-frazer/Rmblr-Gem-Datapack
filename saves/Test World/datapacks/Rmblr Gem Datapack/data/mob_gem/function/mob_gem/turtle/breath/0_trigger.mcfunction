#Speed for emphasis
effect give @s speed 1 2 true

#Breath
playsound entity.player.breath master @a[distance=..12] ~ ~ ~ 1 1 1
effect give @s water_breathing 30 2 false

#Cooldown 30 sec
scoreboard players set @s mbGem_AbilityCooldown 30