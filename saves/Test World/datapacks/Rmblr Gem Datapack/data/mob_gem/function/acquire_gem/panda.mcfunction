#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/panda

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_panda run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523162,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Roll"}','{"color":"aqua","italic":false,"text":"Perk: Edible Bamboo"}'],"custom_name":'{"color":"#26262b","italic":false,"text":"Panda Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_panda set value true