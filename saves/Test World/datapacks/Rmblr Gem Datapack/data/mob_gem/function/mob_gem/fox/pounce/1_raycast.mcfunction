scoreboard players add foxRaycast mbGem_fakePlayer 1

#Target Mob
execute as @e[type=!#mob_gem:nalive,distance=..2,tag=!mbGemFoxPouncing] run function mob_gem:mob_gem/fox/pounce/2_find_mob

execute if score foxRaycast mbGem_fakePlayer matches 1..20 if block ^ ^ ^0.55 #mob_gem:passable positioned ^ ^ ^0.5 run function mob_gem:mob_gem/fox/pounce/1_raycast