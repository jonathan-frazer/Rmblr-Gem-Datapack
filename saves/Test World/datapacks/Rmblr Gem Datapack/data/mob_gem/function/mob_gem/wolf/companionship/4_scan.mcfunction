#Preload the Companion IDs
execute store result score wolfCompanion0 mbGemWolfID run data get storage mob_gem:auxillary Wolf.Companion[0]
execute store result score wolfCompanion1 mbGemWolfID run data get storage mob_gem:auxillary Wolf.Companion[1]
execute store result score wolfCompanion2 mbGemWolfID run data get storage mob_gem:auxillary Wolf.Companion[2]
execute store result score wolfCompanion3 mbGemWolfID run data get storage mob_gem:auxillary Wolf.Companion[3]

#Scan All viable entities
execute as @e[type=!#mob_gem:nalive,distance=20..,predicate=!mob_gem:wolf_gem/has_item] run function mob_gem:mob_gem/wolf/companionship/5_check
