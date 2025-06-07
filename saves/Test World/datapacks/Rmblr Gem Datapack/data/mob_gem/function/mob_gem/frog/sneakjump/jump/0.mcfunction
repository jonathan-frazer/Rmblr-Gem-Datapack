#Frog Jump sound
execute at @s run playsound entity.frog.long_jump master @a[distance=..12] ~ ~ ~ 1 0.8 1

#Apply Fall damage Negation
attribute @s minecraft:generic.fall_damage_multiplier modifier add mob_gem:frog_fall -1.0 add_multiplied_base

#Prepare removal
tag @s add mbGemFrogPad