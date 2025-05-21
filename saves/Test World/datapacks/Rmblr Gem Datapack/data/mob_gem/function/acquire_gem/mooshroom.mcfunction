#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/mooshroom

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_mooshroom run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523137,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Super Stew"}','{"color":"aqua","italic":false,"text":"Perk: Reveals the Contents of Suspicious Stew"}'],"custom_name":'{"color":"#FF0000","italic":false,"text":"Mooshroom Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_mooshroom set value true