#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/slime

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_slime run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523179,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Stomp"}','{"color":"aqua","italic":false,"text":"Perk: Bounce when Falling"}'],"custom_name":'{"color":"#a4ff93","italic":false,"text":"Slime Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_slime set value true