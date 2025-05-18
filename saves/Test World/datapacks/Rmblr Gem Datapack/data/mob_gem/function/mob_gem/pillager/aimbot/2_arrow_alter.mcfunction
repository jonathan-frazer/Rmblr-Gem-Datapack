#Get Arrow Pos
execute store result score mbGemPillagerArrowX mbGem_fakePlayer run data get entity @s Pos[0] 1000
execute store result score mbGemPillagerArrowY mbGem_fakePlayer run data get entity @s Pos[1] 1000
execute store result score mbGemPillagerArrowZ mbGem_fakePlayer run data get entity @s Pos[2] 1000

#Subtract
scoreboard players operation mbGemPillagerTgetX mbGem_fakePlayer -= mbGemPillagerArrowX mbGem_fakePlayer
scoreboard players operation mbGemPillagerTgetY mbGem_fakePlayer -= mbGemPillagerArrowY mbGem_fakePlayer
scoreboard players operation mbGemPillagerTgetZ mbGem_fakePlayer -= mbGemPillagerArrowZ mbGem_fakePlayer

#Data change
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get mbGemPillagerTgetX mbGem_fakePlayer
execute store result entity @s Motion[1] double 0.0004 run scoreboard players get mbGemPillagerTgetY mbGem_fakePlayer
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get mbGemPillagerTgetZ mbGem_fakePlayer