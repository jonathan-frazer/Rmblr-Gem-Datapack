#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/zombie

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_zombie run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523185,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Break"}','{"color":"aqua","italic":false,"text":"Perk: Increased Damage at Night"}'],"custom_name":'{"color":"#326832","italic":false,"text":"Zombie Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_zombie set value true