#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 20

#Jump
effect give @s levitation 1 24 true
attribute @s generic.gravity modifier add mob_gem:pounce_gravity -0.3 add_multiplied_base
attribute @s generic.fall_damage_multiplier modifier add mob_gem:pounce_fall -1.0 add_multiplied_base

#Trigger Pounce
scoreboard players set @s mbGem_foxPounce 1