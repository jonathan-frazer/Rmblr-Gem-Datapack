scoreboard players set @s[predicate=!mob_gem:having_dragon_egg] mbGem_AbilityCooldown 8
scoreboard players set @s[predicate=mob_gem:having_dragon_egg] mbGem_AbilityCooldown 4

#Playsound
playsound entity.iron_golem.attack master @a[distance=..12] ^ ^ ^3 1 1.1 1

#Attack
execute positioned ^ ^ ^3 as @e[distance=..3.1,type=!#mob_gem:nalive,predicate=!mob_gem:iron_golem_gem/holding_item] run function mob_gem:mob_gem/iron_golem/uppercut/1_cut

#Particle
execute positioned ^ ^ ^3 run particle block{block_state:"iron_block"} ~ ~0.25 ~ 1.5 1.5 1.5 0.001 125 normal
execute positioned ^ ^ ^3 run particle block{block_state:"iron_block"} ~ ~0.25 ~ 1.5 1.5 1.5 0.001 25 force