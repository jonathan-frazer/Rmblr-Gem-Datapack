#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/parrot

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_parrot run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523140,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Soar"}','{"color":"aqua","italic":false,"text":"Perk: Glide after using Soar"}'],"custom_name":'{"color":"#ff3c3c","italic":false,"text":"Parrot Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_parrot set value true