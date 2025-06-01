#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/trader_llama

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_llama run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523161,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Llama Spit"}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#925f24","italic":false,"text":"Llama Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_llama set value true