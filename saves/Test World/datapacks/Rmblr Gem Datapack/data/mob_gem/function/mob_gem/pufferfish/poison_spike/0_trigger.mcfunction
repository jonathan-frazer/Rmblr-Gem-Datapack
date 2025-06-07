scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 10
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
title @s[scores={mbGem_AbilityCooldown=1..}] actionbar [{"color":"#ca9140","text":"Cooldown: "},{"color":"#1BD01B","score":{"name":"@s","objective":"mbGem_AbilityCooldown"}},{"color":"#1bd01b","text":"s"}]

tag @s add mbGemPoisonSpiking

#Damage
execute as @e[type=!#mob_gem:nalive,distance=0.5..6] at @s run function mob_gem:mob_gem/pufferfish/poison_spike/1_dmg
#Particle
scoreboard players set mbGemSpikeFX mbGem_fakePlayer 0
execute rotated ~30 0 positioned ^ ^0.85 ^-3.15 run function mob_gem:mob_gem/pufferfish/poison_spike/3_thorn_particle
scoreboard players set mbGemSpikeFX mbGem_fakePlayer 0
execute rotated ~-35 10 positioned ^ ^0.85 ^-3.15 run function mob_gem:mob_gem/pufferfish/poison_spike/3_thorn_particle
scoreboard players set mbGemSpikeFX mbGem_fakePlayer 0
execute rotated ~55 42 positioned ^ ^0.85 ^-3.15 run function mob_gem:mob_gem/pufferfish/poison_spike/3_thorn_particle

tag @s remove mbGemPoisonSpiking