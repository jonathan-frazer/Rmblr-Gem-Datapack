#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 8

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