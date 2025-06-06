#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 8

#Activate Fireball
scoreboard players set @s mbGemGhastFireball 1

#Playsound
execute positioned as @s run playsound entity.ghast.shoot master @a[distance=..12] ~ ~ ~ 0.75 0.85 0.75
execute positioned as @s run playsound entity.ghast.hurt master @a[distance=..12] ~ ~ ~ 0.75 1.00 0.75

#Effects
execute at @s anchored eyes run particle flame ^ ^ ^0.1 0.15 0.2 0.15 0.1 30 normal
execute at @s anchored eyes run particle flame ^ ^ ^0.1 0.15 0.2 0.15 0.1 10 force

#Slow
attribute @s generic.movement_speed modifier add mob_gem:ghast_fire_slow -0.8 add_multiplied_base 