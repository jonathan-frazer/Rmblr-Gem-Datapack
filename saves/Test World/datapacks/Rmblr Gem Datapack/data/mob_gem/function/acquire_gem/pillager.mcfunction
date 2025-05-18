#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/pillager

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pillager run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523174,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: "}','{"color":"aqua","italic":false,"text":"Perk: Crossbow Aimbot(Sneak to bypass)"}'],"custom_name":'{"color":"#999999","italic":false,"text":"Pillager Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_pillager set value true