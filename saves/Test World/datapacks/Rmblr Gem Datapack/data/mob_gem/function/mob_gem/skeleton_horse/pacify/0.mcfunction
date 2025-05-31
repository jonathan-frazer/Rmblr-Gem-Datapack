#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 15

#Initialization
execute as @e[distance=..24,type=skeleton,predicate=!mob_gem:skeleton_horse_gem/has_item] run function mob_gem:mob_gem/skeleton_horse/pacify/1_init

#Effects
    #Sound
    playsound entity.skeleton.hurt master @a[distance=..24] ~ ~ ~ 1 1.2 1
    #Particle
    particle cloud ~ ~ ~ 3 3 3 0.001 100 force