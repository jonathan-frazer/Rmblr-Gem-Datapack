#Clear Debuffs
effect clear @s poison
effect clear @s weakness

#Check Potion
execute if predicate mob_gem:witch_gem/holding_potion run function mob_gem:mob_gem/witch/extend_potion/1_apply