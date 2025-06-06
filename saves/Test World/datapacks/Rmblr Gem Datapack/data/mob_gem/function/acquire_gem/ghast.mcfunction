#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/ghast

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_ghast run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523192,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Big Fireball"}','{"color":"aqua","italic":false,"text":"Perk: Having Ghast Tears gives Regen"}'],"custom_name":'{"color":"#ededed","italic":false,"text":"Ghast Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_ghast set value true