#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/armadillo

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_armadillo run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523124,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Armadillo Shield"}','{"color":"aqua","italic":false,"text":"Perk: Reduces Incoming Damage by 25%"}'],"custom_name":'{"color":"#b35d5d","italic":false,"text":"Armadillo Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_armadillo set value true