#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/spider

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_spider run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523164,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Wall Climb-Hold to Climb Walls"}','{"color":"aqua","italic":false,"text":"Perk: Walking through Cobwebs breaks them"}'],"custom_name":'{"color":"#3a3030","italic":false,"text":"Spider Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_spider set value true