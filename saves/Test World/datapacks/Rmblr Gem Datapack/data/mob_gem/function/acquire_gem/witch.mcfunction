#Revoke the Advancement
advancement revoke @s only mob_gem:kill_mob/witch

#Receive Gem
execute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_witch run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":523184,"custom_data":{mbGem:1b},"lore":['{"color":"green","italic":false,"text":"Ability: Potion Throw(Sneak for Heal)"}','{"color":"aqua","italic":false,"text":"Perk: Extends Potions held in Mainhand"}'],"custom_name":'{"color":"#351757","italic":false,"text":"Witch Gem"}'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}

#Modify the Data
data modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_witch set value true