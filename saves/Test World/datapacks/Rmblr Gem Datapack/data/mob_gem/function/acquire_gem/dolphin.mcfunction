#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/dolphin

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_dolphin run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523157,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Bestow Grace"}','{"color":"aqua","italic":false,"text":"Perk: Permanent Dolphins Grace"}'],"custom_name":'{"color":"#cfdfff","italic":false,"text":"Dolphin Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_dolphin set value true