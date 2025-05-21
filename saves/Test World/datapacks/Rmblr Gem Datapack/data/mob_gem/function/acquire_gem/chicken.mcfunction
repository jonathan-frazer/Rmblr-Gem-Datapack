#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/chicken

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_chicken run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523129,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Flap"}','{"color":"aqua","italic":false,"text":"Perk: Slowfall When Held"}'],"custom_name":'{"color":"#FFFFFF","italic":false,"text":"Chicken Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_chicken set value true