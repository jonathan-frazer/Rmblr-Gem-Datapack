#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/squid

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_squid run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523149,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Inkjet-Blasts Ink"}','{"color":"aqua","italic":false,"text":"Perk: 10% chance to blast Ink"}'],"custom_name":'{"color":"#536c7f","italic":false,"text":"Squid Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_squid set value true