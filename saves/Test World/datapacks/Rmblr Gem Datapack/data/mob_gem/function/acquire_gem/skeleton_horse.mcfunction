#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/skeleton_horse

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_skeleton_horse run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523146,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Skeleton Pacify"}','{"color":"aqua","italic":false,"text":"Perk: Step Height II"}'],"custom_name":'{"color":"#ececec","italic":false,"text":"Skeleton Horse Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_skeleton_horse set value true