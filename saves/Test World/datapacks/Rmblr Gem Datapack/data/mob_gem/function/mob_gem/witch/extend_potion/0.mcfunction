#Reset Score
scoreboard players set extendedPotion mbGem_fakePlayer 0

#Clear Debuffs
effect clear @s poison
effect clear @s weakness

#Check fire_resistance
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:fire_resistance"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/fire_resistance
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check invisibility
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:invisibility"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/invisibility
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check leaping
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:leaping"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/leaping
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check night_vision
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:night_vision"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/night_vision
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check poison
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:poison"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/poison
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check regeneration
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:regeneration"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/regeneration
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check slow_falling
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:slow_falling"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/slow_falling
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check slowness
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:slowness"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/slowness
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check strength
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:strength"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/strength
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check swiftness
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:swiftness"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/swiftness
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check turtle_master
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:turtle_master"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/turtle_master
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check water_breathing
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:water_breathing"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/water_breathing
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

#Check weakness
execute if data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set from entity @s SelectedItem.components."minecraft:potion_contents".potion
execute unless data entity @s SelectedItem.components."minecraft:potion_contents".potion run data modify storage mob_gem:auxillary Witch.heldPotion set value "null"
execute store success score potionMatch mbGem_fakePlayer run data modify storage mob_gem:auxillary Witch.heldPotion set value "minecraft:weakness"
execute if score potionMatch mbGem_fakePlayer matches 0 run item modify entity @s weapon.mainhand mob_gem:witch/weakness
execute if score potionMatch mbGem_fakePlayer matches 0 run scoreboard players set extendedPotion mbGem_fakePlayer 1

execute if score extendedPotion mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/witch/extend_potion/1_extend_fx