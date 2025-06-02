#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/ravager

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_ravager run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523175,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Roar"}','{"color":"aqua","italic":false,"text":"Perk: Sprinting for Longer Increases Speed"}'],"custom_name":'{"color":"#44554d","italic":false,"text":"Ravager Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_ravager set value true