#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/frog

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_frog run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523134,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Tongue Grab"}','{"color":"aqua","italic":false,"text":"Perk: Sneak+Jump height increase"}'],"custom_name":'{"color":"#e2a857","italic":false,"text":"Frog Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_frog set value true