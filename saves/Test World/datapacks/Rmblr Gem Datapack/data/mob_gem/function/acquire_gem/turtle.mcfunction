#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/turtle

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_turtle run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523152,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Turtle Breathing(30sec)"}','{"color":"aqua","italic":false,"text":"Perk: 25% Chance to Drop Scutes when Damaged"}'],"custom_name":'{"color":"#28c935","italic":false,"text":"Turtle Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_turtle set value true