#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/guardian

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_guardian run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523200,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Laser"}','{"color":"aqua","italic":false,"text":"Perk: Player Thorns"}'],"custom_name":'{"color":"##117777","italic":false,"text":"Guardian Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_guardian set value true