#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/pufferfish

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pufferfish run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523142,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Poison Spikes"}','{"color":"aqua","italic":false,"text":"Perk: 10% Chance of Retaliating with Poison Thorns"}'],"custom_name":'{"color":"#e6e667","italic":false,"text":"Pufferfish Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pufferfish set value true