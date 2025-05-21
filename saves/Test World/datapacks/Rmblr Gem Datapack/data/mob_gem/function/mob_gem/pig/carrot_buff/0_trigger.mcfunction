#Eat Carrot
execute store result score carrot_eat mbGem_fakePlayer run clear @s carrot 64
execute store result storage mob_gem:auxillary Pig.Carrotcount int 1.0 run scoreboard players get carrot_eat mbGem_fakePlayer

#Buff(Based on How many Carrots you consume)
execute if score carrot_eat mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/pig/carrot_buff/1_buff with storage mob_gem:auxillary Pig