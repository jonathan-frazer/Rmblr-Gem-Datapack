#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/tadpole

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_tadpole run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523150,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: "}','{"color":"aqua","italic":false,"text":"Perk: Detects Slimes"}'],"custom_name":'{"color":"#71563f","italic":false,"text":"Tadpole Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_tadpole set value true