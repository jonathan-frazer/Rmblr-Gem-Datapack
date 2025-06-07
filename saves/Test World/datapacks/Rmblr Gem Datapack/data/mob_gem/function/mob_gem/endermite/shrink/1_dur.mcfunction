#Apply Size
execute if score @s mbGemShrinkEnder matches 0..15 store result storage mob_gem:auxillary Endermite.shrinkCoefficient float -0.042 run scoreboard players get @s mbGemShrinkEnder
execute if score @s mbGemShrinkEnder matches 0..15 run function mob_gem:mob_gem/endermite/shrink/2_shrink with storage mob_gem:auxillary Endermite

#Trip Buff Layer
execute if score @s[tag=mbGemEnderforward] mbGemShrinkEnder matches 15 run function mob_gem:mob_gem/endermite/shrink/3_buff
execute if score @s[tag=!mbGemEnderforward] mbGemShrinkEnder matches 15 run function mob_gem:mob_gem/endermite/shrink/4_unbuff

#Increment Timer
scoreboard players remove @s[tag=!mbGemEnderforward] mbGemShrinkEnder 1
scoreboard players add @s[tag=mbGemEnderforward] mbGemShrinkEnder 1

#Reverse at 5 sec
execute if score @s[tag=mbGemEnderforward] mbGemShrinkEnder matches 100.. run tag @s remove mbGemEnderforward

#End Move
execute if score @s[tag=!mbGemEnderforward] mbGemShrinkEnder matches ..0 run function mob_gem:mob_gem/endermite/shrink/end