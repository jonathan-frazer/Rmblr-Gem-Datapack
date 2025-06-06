#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/blaze

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_blaze run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523191,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Fireball Volley"}','{"color":"aqua","italic":false,"text":"Perk: Ignites Nearby Hostile Mobs"}'],"custom_name":'{"color":"#fcf546","italic":false,"text":"Blaze Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_blaze set value true