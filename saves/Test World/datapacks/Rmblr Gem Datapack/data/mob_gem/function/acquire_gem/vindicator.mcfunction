#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/vindicator

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_vindicator run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523182,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Axe Throw: Throws an Iron Axe that Deals dmg"}','{"color":"aqua","italic":false,"text":"Perk: Increases Damage of All Axe Weapons"}'],"custom_name":'{"color":"#999999","italic":false,"text":"Vindicator Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_vindicator set value true