#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/shulker

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_shulker run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523176,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Levitation Burst"}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#ae4eb5","italic":false,"text":"Shulker Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_shulker set value true