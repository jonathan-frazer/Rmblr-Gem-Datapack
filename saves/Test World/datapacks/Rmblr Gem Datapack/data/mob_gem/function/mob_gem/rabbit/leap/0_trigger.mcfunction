#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 8
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Store Current Rotation
data modify storage mob_gem:auxillary rabbit.rotX set from entity @s Rotation[0]

#Reduce Gravity
attribute @s generic.gravity modifier add mob_gem:leap_gravity -0.5 add_multiplied_base

#Activate Leap
    #Particle
    particle block{block_state:"sandstone"} ~ ~0.25 ~ 0.13 0.13 0.13 0.01 15 normal
    #Height
    effect give @s levitation 1 10 true
    #Sound
    execute at @s run playsound entity.rabbit.jump master @a[distance=..12] ~ ~ ~ 1 1 1
    execute at @s run playsound entity.player.big_fall master @a[distance=..12] ~ ~ ~ 1 1 1
    #Length
    scoreboard players set @s mbGemLeap 1