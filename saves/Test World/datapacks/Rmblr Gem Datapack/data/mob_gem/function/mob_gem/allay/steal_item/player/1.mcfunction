say @s

#Steal from Hotbar if SlotNumber does not Exceed
$execute unless score mbGemStealOffset mbGem_fakePlayer matches ..$(Slot) run function mob_gem:mob_gem/allay/steal_item/player/2h with storage mob_gem:allay StolenItems

#Steal from Inventory if SlotNumber exceeds
$execute if score mbGemStealOffset mbGem_fakePlayer matches ..$(Slot) run function mob_gem:mob_gem/allay/steal_item/player/2i with storage mob_gem:allay StolenItems