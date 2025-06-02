#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/elder_guardian

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_elder_guardian run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523201,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Laser"}','{"color":"aqua","italic":false,"text":"Perk: Mining Fatigue(Shift-Click to Toggle)"}'],"custom_name":'{"color":"#b3a0f6","italic":false,"text":"Elder Guardian Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_elder_guardian set value true