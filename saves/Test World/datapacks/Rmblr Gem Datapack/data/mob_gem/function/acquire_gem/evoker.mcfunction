#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/evoker

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_evoker run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523172,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Evoker Fangs"}','{"color":"aqua","italic":false,"text":"Perk: Dispells all Attacking Vexes"}'],"custom_name":'{"color":"#d4dac1","italic":false,"text":"Evoker Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_evoker set value true