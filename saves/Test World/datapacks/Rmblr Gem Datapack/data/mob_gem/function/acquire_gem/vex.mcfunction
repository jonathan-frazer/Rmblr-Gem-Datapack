#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/vex

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_vex run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523181,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Rage-Boosts your Attack for a Single Strike"}','{"color":"aqua","italic":false,"text":"Perk: Suffocation Immunity, Boosts Sword Dmg"}'],"custom_name":'{"color":"#989dc5","italic":false,"text":"Vex Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_vex set value true