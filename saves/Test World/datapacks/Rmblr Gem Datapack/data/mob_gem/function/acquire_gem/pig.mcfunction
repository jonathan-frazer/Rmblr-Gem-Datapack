#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/pig

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pig run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523141,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Consume Carrots For Speed"}','{"color":"aqua","italic":false,"text":"Perk: Increases Satiety of Carrots"}'],"custom_name":'{"color":"#f8b1bb","italic":false,"text":"Pig Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pig set value true