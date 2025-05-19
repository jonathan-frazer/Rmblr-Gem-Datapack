#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/camel

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_camel run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523127,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Pace - Lowers speed but increases Height"}','{"color":"aqua","italic":false,"text":"Perk: Makes Cactus Edible"}'],"custom_name":'{"color":"#fac166","italic":false,"text":"Camel Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_camel set value true