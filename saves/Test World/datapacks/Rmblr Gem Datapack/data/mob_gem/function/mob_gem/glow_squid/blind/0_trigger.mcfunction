#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 15
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

#Initialization
execute as @e[distance=..7.5,type=!#mob_gem:nalive,predicate=!mob_gem:glow_squid_gem/holding_item] run function mob_gem:mob_gem/glow_squid/blind/1_init

#Effects
    #Sound
    playsound item.glow_ink_sac.use master @a[distance=..12] ~ ~ ~ 1 1.2 1
    #Particle
    particle glow_squid_ink ~ ~ ~ 3 3 3 0.001 100 force