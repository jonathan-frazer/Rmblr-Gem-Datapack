#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/wither

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wither run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523197,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Wither Skull"}','{"color":"aqua","italic":false,"text":"Perk: Inflicts Extended Wither"}'],"custom_name":'{"color":"#141414","italic":false,"text":"Wither Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_wither set value true