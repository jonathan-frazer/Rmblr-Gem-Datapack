#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/piglin_brute

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_piglin_brute run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523194,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Axe Throw: Throws a Gold Axe that Deals dmg"}','{"color":"aqua","italic":false,"text":"Perk: Increases Damage of All Gold Weapons"}'],"custom_name":'{"color":"gold","italic":false,"text":"Piglin Brute Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_piglin_brute set value true