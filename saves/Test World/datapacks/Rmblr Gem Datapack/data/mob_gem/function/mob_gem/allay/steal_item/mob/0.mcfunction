#Find Target Mob
scoreboard players set readySteal mbGem_fakePlayer 1

#Check Mainhand First
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s HandItems[0]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_mainhand
 
#If Failed Check Offhand
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s HandItems[1]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_offhand

#If Failed Check Chestplate
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s ArmorItems[2]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_chestplate

#If Failed Check Legs
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s ArmorItems[1]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_legs

#If Failed Check Helmet
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s ArmorItems[3]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_helm

#If Failed Check Boots
execute if score readySteal mbGem_fakePlayer matches 1 store success score mbGem_MobSteal mbGem_fakePlayer run data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set from entity @s ArmorItems[0]
execute if score mbGem_MobSteal mbGem_fakePlayer matches 1 run function mob_gem:mob_gem/allay/steal_item/mob/1_boots