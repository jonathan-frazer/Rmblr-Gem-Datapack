#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/rabbit

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_rabbit run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523143,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Leap"}','{"color":"aqua","italic":false,"text":"Perk: Increases Base Jump Strength"}'],"custom_name":'{"color":"#8d8d6a","italic":false,"text":"Rabbit Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_rabbit set value true