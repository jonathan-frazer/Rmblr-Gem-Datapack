scoreboard players set @s mbGemRiptide 1

tp @s @s

#Offhand Trident
item replace entity @s[predicate=mob_gem:drowned_gem/holding_offhand] weapon.offhand with trident[enchantments={levels:{"minecraft:riptide":3}},custom_data={mbGemTrident:true},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:5,operation:"add_value"}],custom_name='{"color":"green","italic":false,"text":"Riptide"}'] 1

#MainHand Trident
item replace entity @s[predicate=mob_gem:drowned_gem/holding_mainhand] weapon.mainhand with trident[enchantments={levels:{"minecraft:riptide":3}},custom_data={mbGemTrident:true},attribute_modifiers=[{id:"attack_speed",type:"generic.attack_speed",amount:5,operation:"add_value"}],custom_name='{"color":"green","italic":false,"text":"Riptide"}'] 1

#Bring Water
setblock ~ ~ ~ water
fill ~1 ~ ~ ~1 ~ ~ barrier replace #mob_gem:passable
fill ~-1 ~ ~ ~-1 ~ ~ barrier replace #mob_gem:passable
fill ~ ~ ~1 ~ ~ ~1 barrier replace #mob_gem:passable
fill ~ ~ ~-1 ~ ~ ~-1 barrier replace #mob_gem:passable
fill ~ ~-1 ~ ~ ~-1 ~ barrier replace #mob_gem:passable