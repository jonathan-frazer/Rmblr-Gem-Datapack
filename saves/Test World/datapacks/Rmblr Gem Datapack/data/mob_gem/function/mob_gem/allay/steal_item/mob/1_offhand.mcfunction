#Score
scoreboard players set readySteal mbGem_fakePlayer 0
scoreboard players set mbGem_MobSteal mbGem_fakePlayer 0

#Copy Item Data
data modify storage mob_gem:allay StolenItems.MobItem set from entity @s HandItems[1]
summon item ~ ~ ~ {CustomName:'{"text":"mbgem_stolenItem"}',PickupDelay:0s,Item:{id:"minecraft:stick",count:1}}
data modify entity @n[type=item,distance=..2,name="mbgem_stolenItem"] Item set from storage mob_gem:allay StolenItems.MobItem

#Remove Item
item replace entity @s weapon.offhand with air

#Reset
data modify storage mob_gem:allay StolenItems.MobItem set value {}