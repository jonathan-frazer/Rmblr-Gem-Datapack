#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/skeleton

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_skeleton run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523178,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: "}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#FFFFFF","italic":false,"text":"Skeleton Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_skeleton set value true