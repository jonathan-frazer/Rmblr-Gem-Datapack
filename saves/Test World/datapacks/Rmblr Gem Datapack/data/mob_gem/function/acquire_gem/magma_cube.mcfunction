#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/magma_cube

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_magma_cube run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523193,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Stomp"}','{"color":"aqua","italic":false,"text":"Perk: Fire Resistance"}'],"custom_name":'{"color":"#460000","italic":false,"text":"Magma Cube Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_magma_cube set value true