#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/goat

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_goat run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523159,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: RAM"}','{"color":"aqua","italic":false,"text":"Perk: "}'],"custom_name":'{"color":"#d8d2c0","italic":false,"text":"Goat Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_goat set value true