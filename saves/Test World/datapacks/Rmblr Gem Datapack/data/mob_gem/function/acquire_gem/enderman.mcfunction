#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/enderman

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_enderman run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523158,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Teleport"}','{"color":"aqua","italic":false,"text":"Perk: Deal 1.5x Damage when Looked at"}'],"custom_name":'{"color":"#ff80fb","italic":false,"text":"Enderman Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_enderman set value true