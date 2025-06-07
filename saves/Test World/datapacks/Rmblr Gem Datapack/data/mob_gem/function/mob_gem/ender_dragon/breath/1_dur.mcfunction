#Timer
scoreboard players add @s mbGemDragonBreath 1

#Breath Time
execute if score @s mbGemDragonBreath matches ..35 run summon area_effect_cloud ^ ^-0.75 ^1 {CustomName:'{"text":"dragonBreathFlame"}',Duration:35,Tags:["Fresh"]}
execute as @n[type=area_effect_cloud,name=dragonBreathFlame,tag=Fresh,distance=..5] at @s rotated as @p[scores={mbGemDragonBreath=1..}] run tp @s ~ ~ ~ ~ ~ 
tag @n[type=area_effect_cloud,name=dragonBreathFlame,tag=Fresh,distance=..5] remove Fresh

#End
execute if score @s mbGemDragonBreath matches 70.. run function mob_gem:mob_gem/ender_dragon/breath/end