#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/silverfish

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_silverfish run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523177,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Shrink"}','{"color":"aqua","italic":false,"text":"Perk: Edible Cobblestone"}'],"custom_name":'{"color":"#8d91a3","italic":false,"text":"Silverfish Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_silverfish set value true