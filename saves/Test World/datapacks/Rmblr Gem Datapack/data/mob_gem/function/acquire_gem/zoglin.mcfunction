#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/zoglin

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_zoglin run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523196,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability:  Consume Warped Fungus for a boost"}','{"color":"aqua","italic":false,"text":"Perk: Max Knockback Resistance"}'],"custom_name":'{"color":"#688c44","italic":false,"text":"Zoglin Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_zoglin set value true