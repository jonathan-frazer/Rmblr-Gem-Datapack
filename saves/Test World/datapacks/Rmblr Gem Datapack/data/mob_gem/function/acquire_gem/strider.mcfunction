#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/strider

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_strider run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523188,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Spawns Lava on Nearby Enemies"}','{"color":"aqua","italic":false,"text":"Perk: Walk on Lava, Crouch to sink"}'],"custom_name":'{"color":"#7a3b3b","italic":false,"text":"Strider Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_strider set value true