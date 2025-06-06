#Particle
particle flame ~ ~0.25 ~ 0.75 0.75 0.75 0.01 20 normal
particle flame ~ ~0.25 ~ 0.75 0.75 0.75 0.01 15 force

#Sound
playsound item.flintandsteel.use master @a[distance=..24] ~ ~ ~ 0.5 1.15 1

#Ignite Mobs
execute as @e[type=#mob_gem:hostile,predicate=!mob_gem:blaze_gem/has_item,distance=..3] run function mob_gem:mob_gem/blaze/fire_aura/2_ignite