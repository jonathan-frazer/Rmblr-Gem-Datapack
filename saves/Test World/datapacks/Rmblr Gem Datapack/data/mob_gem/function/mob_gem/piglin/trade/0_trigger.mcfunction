#Consume Gold
execute store success score gold_trade mbGem_fakePlayer run clear @s gold_ingot 1

#Buff
execute if score gold_trade mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/piglin/trade/1_trade_get

#Refuse
execute unless score gold_trade mbGem_fakePlayer matches 1.. positioned as @s run playsound entity.piglin.angry master @a[distance=..12] ~ ~ ~ 1 0.95 1