#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/bee

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_bee run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523155,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Bee Swarm"}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#fff200","italic":false,"text":"Bee Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_bee set value true