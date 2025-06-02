#Apply Size
execute if score @s mbGemShrinkSilver matches 0..15 store result storage mob_gem:auxillary Silverfish.shrinkCoefficient float -0.042 run scoreboard players get @s mbGemShrinkSilver
execute if score @s mbGemShrinkSilver matches 0..15 run function mob_gem:mob_gem/silverfish/shrink/2_shrink with storage mob_gem:auxillary Silverfish

#Trip Buff Layer
execute if score @s[tag=mbGemSilverforward] mbGemShrinkSilver matches 15 run function mob_gem:mob_gem/silverfish/shrink/3_buff
execute if score @s[tag=!mbGemSilverforward] mbGemShrinkSilver matches 15 run function mob_gem:mob_gem/silverfish/shrink/4_unbuff

#Increment Timer
scoreboard players remove @s[tag=!mbGemSilverforward] mbGemShrinkSilver 1
scoreboard players add @s[tag=mbGemSilverforward] mbGemShrinkSilver 1

#Reverse at 10 sec
execute if score @s[tag=mbGemSilverforward] mbGemShrinkSilver matches 200.. run tag @s remove mbGemSilverforward

#End Move
execute if score @s[tag=!mbGemSilverforward] mbGemShrinkSilver matches ..0 run function mob_gem:mob_gem/silverfish/shrink/end