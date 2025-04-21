import os
import json

minecraft_mobs = ['allay', 'armadillo', 'axolotl', 'bat', 'camel', 'cat', 'chicken', 'cod', 'cow', 'donkey', 'fox', 'frog', 'glow_squid', 'horse', 'mooshroom', 'mule', 'ocelot', 'parrot', 'pig', 'pufferfish', 'rabbit', 'salmon', 'sheep', 'skeleton_horse', 'sniffer', 'snow_golem', 'squid', 'tadpole', 'tropical_fish', 'turtle', 'villager', 'wandering_trader', 'bee', 'cave_spider', 'dolphin', 'enderman', 'goat', 'iron_golem', 'llama', 'panda', 'polar_bear', 'spider', 'trader_llama', 'wolf', 'zombified_piglin', 'bogged', 'breeze', 'creeper', 'drowned', 'evoker', 'phantom', 'pillager', 'ravager', 'shulker', 'silverfish', 'skeleton', 'slime', 'stray', 'vex', 'vindicator', 'warden', 'witch', 'zombie', 'husk', 'zombie_villager', 'strider', 'hoglin', 'piglin', 'blaze', 'ghast', 
'magma_cube', 'piglin_brute', 'wither_skeleton', 'zoglin', 'wither', 'endermite', 'ender_dragon']

#Advancement
advancement_path = r"C:\Users\jonat\AppData\Roaming\.minecraft\saves\Test World\datapacks\Rmblr Gem Datapack\data\mob_gem\advancement\kill_mob"
for mob in minecraft_mobs:
	if os.path.exists(os.path.join(advancement_path, f"{mob}.json")): continue
	with open(os.path.join(advancement_path, f"{mob}.json"), 'w') as f:
		json.dump({
			"criteria": {
				"acquire_gem": {
					"trigger": "minecraft:player_killed_entity",
					"conditions": {
						"player": {
							"type": "minecraft:player"
						},
						"entity": {
							"type": f"minecraft:{mob}"
						}
					}
				}
			},
			"rewards": {
				"function": "mob_gem:acquire_gem/" + mob
			}
		}, f,indent=4)
print("Generated Advancements")

#Warped Fungus to Write the Custom Model Data
warped_fungus_file = r"C:\Users\jonat\AppData\Roaming\.minecraft\resourcepacks\Rmblr Gem Resourcepack\assets\minecraft\models\item"
custom_model_data = 523123
warped_fungus_data = {
	"parent": "minecraft:item/handheld_rod",
	"textures": {
		"layer0": "item/warped_fungus_on_a_stick"
	},
	"overrides": []
}
for i,mob in enumerate(minecraft_mobs):
	warped_fungus_data["overrides"].append({"predicate": {"custom_model_data": 523123+i}, "model": f"item/mob_gem/{mob}"})
	
with open(os.path.join(warped_fungus_file, f"warped_fungus_on_a_stick.json"), 'w') as f:
	json.dump(warped_fungus_data, f,indent=4)
print("Wrote to the Warped Fungus File")	

#Model Files
resource_pack_path = r"C:\Users\jonat\AppData\Roaming\.minecraft\resourcepacks\Rmblr Gem Resourcepack\assets\minecraft\models\item\mob_gem"
for mob in minecraft_mobs:
	with open(os.path.join(resource_pack_path, f"{mob}.json"), 'w') as f:
		json.dump({"parent": "minecraft:item/generated",
		"textures": {
		"layer0": f"item/mob_gem/{mob}"
	},
	"gui_light": "front"
},f,indent=4)
print("Added Model Files for the gems")

#Function Files
function_path = r"C:\Users\jonat\AppData\Roaming\.minecraft\saves\Test World\datapacks\Rmblr Gem Datapack\data\mob_gem\function\acquire_gem"
for i,mob in enumerate(minecraft_mobs):
	if os.path.exists(os.path.join(function_path, f"{mob}.mcfunction")):		continue
	with open(os.path.join(function_path, f"{mob}.mcfunction"), 'w') as f:
		f.write(f"#Revoke the Advancement")
		f.write(f"\nadvancement revoke @s only mob_gem:kill_mob/{mob}")
		f.write("\n\n#Receive Gem")
		f.write('\nexecute unless data storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_%s run summon item ~ ~1 ~ {Item:{components:{"custom_model_data":%d,"custom_data":{mbGem:1b},"lore":[\'{"color":"green","italic":false,"text":"Ability: "}\',\'{"color":"aqua","italic":false,"text":"Perk: "}\'],"custom_name":\'{"color":"#FFFFFF","italic":false,"text":"%s Gem"}\'},count:1,id:"warped_fungus_on_a_stick"},Motion:[0.0,0.0,0.0],PickupDelay:0s}'%(mob,i+custom_model_data,mob.title().replace('_',' ')))
		f.write("\n\n#Modify the Data")
		f.write(f"\ndata modify storage mob_gem:gem_acquire GemsCurrentlySpawned.mbGem_{mob} set value true")
print("Created Functions for Getting the Gems")

#Predicate Files
predicate_path = r"C:\Users\jonat\AppData\Roaming\.minecraft\saves\Test World\datapacks\Rmblr Gem Datapack\data\mob_gem\predicate"
for i,mob in enumerate(minecraft_mobs):
	if os.path.exists(os.path.join(predicate_path, f"{mob}_gem")):	continue
		
	with open(os.path.join(predicate_path, f"{mob}_gem\\holding_item.json"), 'w') as f:
		json.dump(
			{
		"condition": "minecraft:entity_properties",
		"entity": "this",
		"predicate": {
			"type": "player",
			"slots": {
				"weapon.*": {
					"items": "minecraft:warped_fungus_on_a_stick",
					"components": {
						"minecraft:custom_model_data": custom_model_data+i
					}
				}
			}
		}
	},f,indent=4)

	with open(os.path.join(predicate_path, f"{mob}_gem\\has_item.json"), 'w') as f:
		json.dump(
			{
		"condition": "minecraft:any_of",
		"terms": [
			{
				"condition": "minecraft:entity_properties",
				"entity": "this",
				"predicate": {
					"type": "minecraft:player",
					"slots": {
						"inventory.*": {
							"items": "minecraft:warped_fungus_on_a_stick",
							"components": {
								"minecraft:custom_model_data": custom_model_data+i
							}
						}
					}
				}
			},
			{
				"condition": "minecraft:entity_properties",
				"entity": "this",
				"predicate": {
					"type": "minecraft:player",
					"slots": {
						"hotbar.*": {
							"items": "minecraft:warped_fungus_on_a_stick",
							"components": {
								"minecraft:custom_model_data": custom_model_data+i
							}
						}
					}
				}
			},
			{
				"condition": "minecraft:entity_properties",
				"entity": "this",
				"predicate": {
					"type": "minecraft:player",
					"slots": {
						"weapon.offhand": {
							"items": "minecraft:warped_fungus_on_a_stick",
							"components": {
								"minecraft:custom_model_data": custom_model_data+i
							}
						}
					}
				}
			}
		]
	},f,indent=4)
		
print("Created Predicates")

#Rename Textures
texture_path = r"C:\Users\jonat\AppData\Roaming\.minecraft\resourcepacks\Rmblr Gem Resourcepack\assets\minecraft\textures\item\mob_gem"

for texture in os.listdir(texture_path):
	if "_spawn_egg" in texture:
		new_texture_name = texture.replace("_spawn_egg", "")
		if(new_texture_name[:-4] not in minecraft_mobs): 
			os.remove(os.path.join(texture_path, texture))
		else:
			os.rename(os.path.join(texture_path, texture), os.path.join(texture_path, new_texture_name))
			
print("Renamed Textures")