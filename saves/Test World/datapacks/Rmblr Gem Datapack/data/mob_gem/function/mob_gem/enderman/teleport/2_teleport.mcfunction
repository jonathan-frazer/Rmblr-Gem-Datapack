#Prevent Relock
scoreboard players set mbGemEnderRaycast mbGem_fakePlayer -1
tp @s ~ ~1 ~ ~ ~

#Playsound
playsound entity.enderman.teleport master @a[distance=..32] ~ ~ ~ 1 1 1

#Display Particle
particle dust{color:[0.871,0.439,1.000],scale:1} ~ ~0.5 ~ 0.15 0.25 0.15 0.1 30 normal

#Cooldown
scoreboard players set @s mbGem_AbilityCooldown 20