#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/cave_spider

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_cave_spider run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523156,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Web-Shoot"}','{"color":"aqua","italic":false,"text":"Perk: Poison Aspect"}'],"custom_name":'{"color":"#1c3a43","italic":false,"text":"Cave Spider Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_cave_spider set value true