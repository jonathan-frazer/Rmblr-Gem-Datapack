scoreboard players reset @s mbGem_foxPounce

#Remove Effects
effect clear @s levitation
attribute @s generic.gravity modifier remove mob_gem:pounce_gravity
attribute @s generic.fall_damage_multiplier modifier remove mob_gem:pounce_fall

#Trigger Pounce
scoreboard players set @s mbGem_foxPounce 1

#Remove Tags
tag @n[tag=mbGemFoxPounceTarget,type=!#mob_gem:nalive] remove mbGemFoxPounceTarget