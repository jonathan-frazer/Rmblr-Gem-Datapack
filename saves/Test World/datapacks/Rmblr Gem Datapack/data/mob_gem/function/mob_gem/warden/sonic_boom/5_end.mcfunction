#Apply Cooldown
scoreboard players reset @s mbGemSonicBoom
scoreboard players set @s mbGem_AbilityCooldown 15

#Remove Debuffs
attribute @s minecraft:generic.movement_speed modifier remove mob_gem:warden_slow
attribute @s minecraft:generic.gravity modifier remove mob_gem:warden_lock