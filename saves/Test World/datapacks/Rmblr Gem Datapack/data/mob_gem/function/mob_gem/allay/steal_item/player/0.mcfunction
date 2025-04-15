#Find Target Player
data modify storage mob_gem:allay StolenItems.Item set from entity @s Inventory[0]
summon item ~ ~ ~ {CustomName:'{"text":"mbgem_stolenItem"}',PickupDelay:0s,Item:{id:"minecraft:stick",count:1}}
data modify entity @n[type=item,distance=..2,name="mbgem_stolenItem"] Item set from storage mob_gem:allay StolenItems.Item

#Find the Slot Number
data modify storage mob_gem:allay StolenItems.Slot set from entity @s Inventory[0].Slot
execute store result score mbGemStealInv mbGem_fakePlayer run data get storage mob_gem:allay StolenItems.Slot
execute store result storage mob_gem:allay StolenItems.OffsetSlot byte 1 run scoreboard players remove mbGemStealInv mbGem_fakePlayer 9

function mob_gem:mob_gem/allay/steal_item/player/1 with storage mob_gem:allay StolenItems