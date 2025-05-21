scoreboard players set @s mbGem_AbilityCooldown 10

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