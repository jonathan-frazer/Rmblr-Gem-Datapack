#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/wandering_trader

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wandering_trader run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523154,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Invisibility(Only use at Night)"}','{"color":"aqua","italic":false,"text":"Perk: Llama\'s Do not Aggro you"}'],"custom_name":'{"color":"#425e8f","italic":false,"text":"Wandering Trader Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wandering_trader set value true