#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/horse

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_horse run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523136,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Ride Mobs"}','{"color":"aqua","italic":false,"text":"Perk: Step Height II"}'],"custom_name":'{"color":"#663b18","italic":false,"text":"Horse Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_horse set value true