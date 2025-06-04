#Checks to See if you have boots without Frost Walker
execute if data entity @s Inventory[{Slot:100b}].id unless data entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."minecraft:frost_walker" positioned as @s run function mob_gem:mob_gem/polar_bear/frost_enchant/1_activate

#Checks to See if you have Boots with Frost Walker
execute as @s[tag=!mbFrostWalkerAdd] if data entity @s Inventory[{Slot:100b}].id if data entity @s Inventory[{Slot:100b}].components."minecraft:enchantments".levels."minecraft:frost_walker" positioned as @s run function mob_gem:mob_gem/polar_bear/frost_enchant/2_deactivate

#Prevent an Immediate Trip
tag @s[tag=mbFrostWalkerAdd] remove mbFrostWalkerAdd