#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/polar_bear

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_polar_bear run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523163,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Apply/Remove Frost Walker"}','{"color":"aqua","italic":false,"text":"Perk: Boosts Damage in Snow Biome"}'],"custom_name":'{"color":"#EEEEEE","italic":false,"text":"Polar Bear Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_polar_bear set value true