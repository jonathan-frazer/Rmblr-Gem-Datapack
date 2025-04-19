scoreboard players reset @s mbGemRiptide

#Clear Trident
execute store result score mbGemTakeTrident mbGem_fakePlayer run clear @s trident[enchantments={levels:{"minecraft:riptide":3}},custom_data={mbGemTrident:true},custom_name='{"color":"green","italic":false,"text":"Riptide"}'] 0

#Return Gem
execute if score mbGemTakeTrident mbGem_fakePlayer matches 1.. run function mob_gem:mob_gem/drowned/riptide/4_return