#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Initialization
execute as @e[distance=..24,type=skeleton,predicate=!mob_gem:skeleton_horse_gem/has_item] run function mob_gem:mob_gem/skeleton_horse/pacify/1_init

#Effects
    #Sound
    playsound entity.skeleton.hurt master @a[distance=..24] ~ ~ ~ 1 1.2 1
    #Particle
    particle cloud ~ ~ ~ 3 3 3 0.001 100 force