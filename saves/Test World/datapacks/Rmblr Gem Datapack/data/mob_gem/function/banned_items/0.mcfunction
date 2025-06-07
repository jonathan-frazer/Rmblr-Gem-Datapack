#Clear Items
execute store success score @s mbGemBanCount run clear @s #mob_gem:banned_items

#If Clearing was successful then display message
execute if score @s mbGemBanCount matches 1.. at @s run function mob_gem:banned_items/1