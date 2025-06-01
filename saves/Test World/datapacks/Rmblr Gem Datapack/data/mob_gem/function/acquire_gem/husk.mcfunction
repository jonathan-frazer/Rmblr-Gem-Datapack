#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/husk

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_husk run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523186,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Break"}','{"color":"aqua","italic":false,"text":"Perk: Increased Damage at Day"}'],"custom_name":'{"color":"#e2c992","italic":false,"text":"Husk Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_husk set value true