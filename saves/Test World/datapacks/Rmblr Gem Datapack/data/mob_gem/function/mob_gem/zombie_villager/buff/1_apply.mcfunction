#Clear All previous effects
effect clear @s

#Particle
particle happy_villager ~ ~1.75 ~ 0.75 0.75 0.75 0.3 100 force

#Sound
playsound entity.zombie_villager.cure master @a[distance=..32] ~ ~ ~ 1 1 1

#Buffs
effect give @s fire_resistance 45 1 false
effect give @s absorption 45 1 false
effect give @s haste 45 1 false
effect give @s regeneration 45 1 false
effect give @s jump_boost 45 1 false
effect give @s speed 45 1 false