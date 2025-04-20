#Set Raycast Score to 0
scoreboard players set mbGemEnderRaycast mbGem_fakePlayer 0

#Display Particle
particle dust{color:[0.871,0.439,1.000],scale:1} ~ ~ ~ 0.15 0.25 0.15 0.1 30 normal

function mob_gem:mob_gem/enderman/teleport/1r