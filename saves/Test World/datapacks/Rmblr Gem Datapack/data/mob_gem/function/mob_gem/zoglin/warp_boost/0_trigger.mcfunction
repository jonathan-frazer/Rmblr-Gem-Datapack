#Eat Warped Fungus
execute store success score warped_fungus_eat mbGem_fakePlayer run clear @s warped_fungus 1

#Buff
execute if score warped_fungus_eat mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/zoglin/warp_boost/1_buff

#Refuse
execute unless score warped_fungus_eat mbGem_fakePlayer matches 1.. at @s run playsound entity.zoglin.angry master @a[distance=..12] ~ ~ ~ 0.5 0.95 1