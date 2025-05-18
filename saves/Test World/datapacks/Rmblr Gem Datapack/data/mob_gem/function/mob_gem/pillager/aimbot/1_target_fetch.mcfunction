#Get Mob Pos
execute store result score mbGemPillagerTgetX mbGem_fakePlayer run data get entity @s Pos[0] 1000
execute store result score mbGemPillagerTgetY mbGem_fakePlayer run data get entity @s Pos[1] 1000
execute store result score mbGemPillagerTgetZ mbGem_fakePlayer run data get entity @s Pos[2] 1000

#Targetd
effect give @s glowing 1 43 true

#Found Target Flag
scoreboard players set mbGemPillagerFound mbGem_fakePlayer 1