#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/iron_golem

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_iron_golem run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523160,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Uppercut"}','{"color":"aqua","italic":false,"text":"Perk: Iron Flesh"}'],"custom_name":'{"color":"#e6c6b5","italic":false,"text":"Iron Golem Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_iron_golem set value true