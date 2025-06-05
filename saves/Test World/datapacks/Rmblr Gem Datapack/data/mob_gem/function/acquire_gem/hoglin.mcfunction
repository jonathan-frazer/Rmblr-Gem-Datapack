#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/hoglin

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_hoglin run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523189,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Consume Crimson Fungus for a boost"}','{"color":"aqua","italic":false,"text":"Perk: Max Knockback Resistance"}'],"custom_name":'{"color":"#d29379","italic":false,"text":"Hoglin Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_hoglin set value true