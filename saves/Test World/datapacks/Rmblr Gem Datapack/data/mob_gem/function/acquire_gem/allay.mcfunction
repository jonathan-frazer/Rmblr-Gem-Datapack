#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/allay

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_allay run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523123,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Picks up all Items in a Radius"}','{"color":"aqua","italic":false,"text":"Perk: Small Chance to Steal Items on Attack"}'],"custom_name":'{"color":"#00c6ee","italic":false,"text":"Allay Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_allay set value true