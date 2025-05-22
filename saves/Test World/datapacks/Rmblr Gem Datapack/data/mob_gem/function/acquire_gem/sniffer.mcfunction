#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/sniffer

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_sniffer run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523147,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Burrow"}','{"color":"aqua","italic":false,"text":"Perk: Sturdy - Increases Max HP"}'],"custom_name":'{"color":"#2a8d59","italic":false,"text":"Sniffer Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_sniffer set value true