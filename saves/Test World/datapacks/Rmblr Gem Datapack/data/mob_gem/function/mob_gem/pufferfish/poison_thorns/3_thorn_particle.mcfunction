scoreboard players add mbGemSpikeFX mbGem_fakePlayer 1

execute if score mbGemSpikeFX mbGem_fakePlayer matches 8..12 run particle dust{color:[0.6f,0.6f,0.0f],scale:1.6f} ~ ~ ~ 0 0 0 0.01 3 force @a[distance=..16]
execute unless score mbGemSpikeFX mbGem_fakePlayer matches 8..12 run particle dust{color:[0.6f,0.6f,0.0f],scale:0.7f} ~ ~ ~ 0 0 0 0.01 3 force @a[distance=..16]

execute if score mbGemSpikeFX mbGem_fakePlayer matches ..20 positioned ^ ^ ^0.215 run function mob_gem:mob_gem/pufferfish/poison_spike/3_thorn_particle