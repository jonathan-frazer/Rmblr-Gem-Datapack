#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/donkey

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_donkey run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523132,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Personal Storage(Shift)"}','{"color":"aqua","italic":false,"text":"Perk: Step Height I"}'],"custom_name":'{"color":"#92997f","italic":false,"text":"Donkey Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_donkey set value true