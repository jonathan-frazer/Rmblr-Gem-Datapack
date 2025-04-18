#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/wolf

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wolf run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523166,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: "}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#FFFFFF","italic":false,"text":"Wolf Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wolf set value true