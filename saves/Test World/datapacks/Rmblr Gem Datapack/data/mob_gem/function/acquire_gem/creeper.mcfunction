#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/creeper

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_creeper run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523170,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Creeper Explosion"}','{"color":"aqua","italic":false,"text":"Perk: Immunity to your Own Explosions"}'],"custom_name":'{"color":"#00CC00","italic":false,"text":"Creeper Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_creeper set value true