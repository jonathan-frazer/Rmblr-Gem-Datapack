#Eat Crimson Fungus
execute store success score crimson_fungus_eat mbGem_fakePlayer run clear @s crimson_fungus 1

#Buff
execute if score crimson_fungus_eat mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/hoglin/crim_boost/1_buff

#Refuse
execute unless score crimson_fungus_eat mbGem_fakePlayer matches 1.. positioned as @s run playsound entity.hoglin.angry master @a[distance=..12] ~ ~ ~ 0.5 0.95 1