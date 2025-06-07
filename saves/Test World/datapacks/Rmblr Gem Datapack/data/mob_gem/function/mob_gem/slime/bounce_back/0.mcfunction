execute store result score slimeBounce mbGem_fakePlayer run data get entity @s FallDistance 1.0
#Limit Upto 255
execute if score slimeBounce mbGem_fakePlayer matches 255.. run scoreboard players set slimeBounce mbGem_fakePlayer 255
#Store in Storage
execute store result storage mob_gem:auxillary Slime.fallDistance int 1.0 run scoreboard players get slimeBounce mbGem_fakePlayer
execute store result storage mob_gem:auxillary Slime.fallDmg double 0.05 run scoreboard players get slimeBounce mbGem_fakePlayer
execute store result storage mob_gem:auxillary Slime.stompDmg double 1.25 run scoreboard players get slimeBounce mbGem_fakePlayer

#Bounce Up using Data
execute if score slimeBounce mbGem_fakePlayer matches 4..255 at @s run function mob_gem:mob_gem/slime/bounce_back/1_bounce with storage mob_gem:auxillary Slime