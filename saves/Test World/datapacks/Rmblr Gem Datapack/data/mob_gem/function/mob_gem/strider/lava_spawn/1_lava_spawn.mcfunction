#Display Particle
particle dust{color:[1.0, 0.3882, 0.0],scale:1.5f} ~ ~0.5 ~ 5 0.1 5 0.1 100 normal
particle lava ~ ~0.5 ~ 5 0.1 5 0.1 15 force

#Playsound
playsound entity.strider.step_lava master @a[distance=..32] ~ ~ ~ 1 0.8 1

#Spawn Lava
execute as @e[type=!#mob_gem:nalive,distance=1..12] run function mob_gem:mob_gem/strider/lava_spawn/2_lava_target