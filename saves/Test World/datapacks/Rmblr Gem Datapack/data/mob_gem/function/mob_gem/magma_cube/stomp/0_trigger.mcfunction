#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 12

#Sound
playsound entity.magma_cube.jump master @a[distance=..12] ~ ~ ~ 1 1.1 1
particle block{block_state:"minecraft:magma_block"} ~ ~ ~ 0.25 0.25 0.25 0.005 10 normal

#Stomp
effect give @s levitation 1 23 true

#Negate Fall Damage
attribute @s generic.fall_damage_multiplier modifier add mob_gem:magma_cube_falldmg -1.0 add_multiplied_base

#Stomp Tag
tag @s add mbGemMagmaStomp