#Eat Crimson Fungus
execute store success score crimson_fungus_eat mbGem_fakePlayer run clear @s crimson_fungus 1

#Buff
execute if score crimson_fungus_eat mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/hoglin/crim_boost/1_buff