execute positioned as @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16711935,16777215],fade_colors:[I;15921831,16580564]}]}}}}
execute positioned as @s run playsound entity.lightning_bolt.impact master @a[distance=..12] ~ ~ ~ 1 0.95 1
damage @s 20.0 magic by @p[predicate=mob_gem:elder_guardian_gem/holding_item]

function mob_gem:mob_gem/elder_guardian/laser/clear