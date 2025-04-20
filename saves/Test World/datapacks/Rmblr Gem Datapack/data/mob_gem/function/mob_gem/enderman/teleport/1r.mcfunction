scoreboard players add mbGemEnderRaycast mbGem_fakePlayer 1

#If Hit Block or End of Move then Teleport
execute unless block ^ ^ ^1.05 #mob_gem:passable positioned ^ ^ ^1.05 run function mob_gem:mob_gem/enderman/teleport/2_teleport
execute if score mbGemEnderRaycast mbGem_fakePlayer matches 51 positioned ~ ~-1 ~ run function mob_gem:mob_gem/enderman/teleport/2_teleport

execute if score mbGemEnderRaycast mbGem_fakePlayer matches 1..50 if block ^ ^ ^1.05 #mob_gem:passable positioned ^ ^ ^1.0 run function mob_gem:mob_gem/enderman/teleport/1r