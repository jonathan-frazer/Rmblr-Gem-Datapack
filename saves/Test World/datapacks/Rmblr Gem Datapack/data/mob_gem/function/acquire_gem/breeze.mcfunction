#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/breeze

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_breeze run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523169,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Breeze Launch "}','{"color":"aqua","italic":false,"text":"Perk: Negates Fall Damage"}'],"custom_name":'{"color":"#a6aaff","italic":false,"text":"Breeze Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_breeze set value true