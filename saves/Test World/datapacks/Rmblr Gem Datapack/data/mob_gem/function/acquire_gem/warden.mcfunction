#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/warden

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_warden run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523183,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Sonic Boom"}','{"color":"aqua","italic":false,"text":"Perk: Immune to Blindness/Darkness"}'],"custom_name":'{"color":"#00bda7","italic":false,"text":"Warden Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_warden set value true