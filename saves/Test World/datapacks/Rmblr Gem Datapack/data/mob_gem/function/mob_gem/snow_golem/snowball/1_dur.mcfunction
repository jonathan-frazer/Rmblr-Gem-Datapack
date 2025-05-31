scoreboard players add @s mbGem_snowballThrow 1

#Setup the Flipflop
execute store success score flipflop mbGem_fakePlayer unless score flipflop mbGem_fakePlayer matches 1
#Set Position on 0
execute if score flipflop mbGem_fakePlayer matches 0 positioned 0.00 0.00 0.00 run function mob_gem:mob_gem/snow_golem/snowball/2_store_pos
#Summon Snowball on 1
execute if score flipflop mbGem_fakePlayer matches 1 at @s anchored eyes run function mob_gem:mob_gem/snow_golem/snowball/3_throw with storage mob_gem:auxillary snowGolem

#Effects
particle block{block_state:"minecraft:snow"} ~ ~0.75 ~ 0.35 0.75 0.35 0 10 normal

execute if score @s mbGem_snowballThrow matches 100.. run function mob_gem:mob_gem/snow_golem/snowball/end