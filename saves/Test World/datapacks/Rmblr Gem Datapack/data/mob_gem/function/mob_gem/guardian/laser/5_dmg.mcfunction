execute positioned as @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;10027263,16777215],fade_colors:[I;88400,51631]}]}}}}
execute positioned as @s run playsound entity.lightning_bolt.impact master @a[distance=..12] ~ ~ ~ 1 0.95 1
damage @s 11.0 magic by @p[predicate=mob_gem:guardian_gem/holding_item]

function mob_gem:mob_gem/guardian/laser/clear