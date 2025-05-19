tag @s add mbGemFoxPouncing

#Raycast to find mob
scoreboard players set foxRaycast mbGem_fakePlayer 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function mob_gem:mob_gem/fox/pounce/1_raycast

tag @s remove mbGemFoxPouncing