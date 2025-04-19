scoreboard players reset @s mbGemRiptide

#Clear Trident
execute store result score mbGemTakeTrident mbGem_fakePlayer run clear @s trident[enchantments={levels:{"minecraft:riptide":3}},custom_data={mbGemTrident:true},custom_name='{"color":"green","italic":false,"text":"Riptide"}'] 0

#Return Gem
execute if score mbGemTakeTrident mbGem_fakePlayer matches 1.. run item replace entity @s[predicate=mob_gem:drowned_gem/trident/holding_mainhand] weapon.mainhand with warped_fungus_on_a_stick[custom_model_data=523171,custom_data={mbGem:1b},lore=['{"color":"green","italic":false,"text":"Ability: Riptide"}','{"color":"aqua","italic":false,"text":"Perk: Increases Speed in Water"}'],custom_name='{"color":"#008c64","italic":false,"text":"Drowned Gem"}'] 1

execute if score mbGemTakeTrident mbGem_fakePlayer matches 1.. run item replace entity @s[predicate=mob_gem:drowned_gem/trident/holding_offhand] weapon.offhand with warped_fungus_on_a_stick[custom_model_data=523171,custom_data={mbGem:1b},lore=['{"color":"green","italic":false,"text":"Ability: Riptide"}','{"color":"aqua","italic":false,"text":"Perk: Increases Speed in Water"}'],custom_name='{"color":"#008c64","italic":false,"text":"Drowned Gem"}'] 1