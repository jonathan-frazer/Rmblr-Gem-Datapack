#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/cat

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_cat run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523128,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Scare away Mobs"}','{"color":"aqua","italic":false,"text":"Perk: Increases Speed when Being Chased"}'],"custom_name":'{"color":"gray","italic":false,"text":"Cat Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_cat set value true