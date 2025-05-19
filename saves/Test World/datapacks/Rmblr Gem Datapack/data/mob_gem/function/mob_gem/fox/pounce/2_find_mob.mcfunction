tag @s add mbGemFoxPounceTarget

#Trigger
execute as @p[tag=mbGemFoxPouncing] at @s run function mob_gem:mob_gem/fox/pounce/3_trigger

#Glow
effect give @s glowing 1 0 true

#Latch
scoreboard players set foxRaycast mbGem_fakePlayer -1