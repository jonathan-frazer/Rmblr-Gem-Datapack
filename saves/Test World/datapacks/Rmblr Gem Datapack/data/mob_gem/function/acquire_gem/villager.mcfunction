#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/villager

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_villager run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523153,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Iron Golem Spawn"}','{"color":"aqua","italic":false,"text":"Perk: Village Hero"}'],"custom_name":'{"color":"#684c47","italic":false,"text":"Villager Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_villager set value true