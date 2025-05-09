#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/tropical_fish

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_tropical_fish run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523151,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: "}','{"color":"aqua","italic":false,"text":"Perk: Conduit Power(only in Warm Ocean)"}'],"custom_name":'{"color":"#FFA500","italic":false,"text":"Tropical Fish Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_tropical_fish set value true