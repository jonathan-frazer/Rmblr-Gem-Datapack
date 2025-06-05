#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/piglin

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_piglin run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523190,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Consume Gold for a Piglin-Barter"}','{"color":"aqua","italic":false,"text":"Perk: Significantly Boosts Gold Armor"}'],"custom_name":'{"color":"#c78064","italic":false,"text":"Piglin Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_piglin set value true