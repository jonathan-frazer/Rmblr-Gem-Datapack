#Removes frost walker
summon armor_stand ~ ~ ~ {Small:1b,ArmorItems:[{id:"minecraft:iron_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:frost_walker":1}}}},{},{},{}],CustomName:'"mbfrostRemover"'}
data modify entity @n[type=armor_stand,name="mbfrostRemover",distance=..1] ArmorItems[0].id set from entity @s Inventory[{Slot:100b}].id
data modify entity @n[type=armor_stand,name="mbfrostRemover",distance=..1] ArmorItems[0].count set from entity @s Inventory[{Slot:100b}].count
data modify entity @n[type=armor_stand,name="mbfrostRemover",distance=..1] ArmorItems[0].components set from entity @s Inventory[{Slot:100b}].components
data remove entity @n[type=armor_stand,name="mbfrostRemover",distance=..1] ArmorItems[0].components."minecraft:enchantments".levels."minecraft:frost_walker"
item replace entity @s armor.feet from entity @n[type=armor_stand,name="mbfrostRemover",distance=..1] armor.feet
kill @n[type=armor_stand,name="mbfrostRemover",distance=..1]

#Particle
particle soul_fire_flame ~ ~0.1 ~ 0.125 0.01 0.125 0.001 5 normal
particle soul_fire_flame ~ ~0.1 ~ 0.125 0.01 0.125 0.001 1 force
particle block{block_state:"snow"} ~ ~0.1 ~ 0.125 0.01 0.125 0.001 2 force
particle block{block_state:"snow"} ~ ~0.1 ~ 0.125 0.01 0.125 0.001 10 normal

#Playsound
playsound entity.polar_bear.warning master @a[distance=..12] ~ ~ ~ 0.2 1.25 1

#Cooldown
scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 5
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 2