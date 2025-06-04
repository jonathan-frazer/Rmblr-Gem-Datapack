#Item Invincibility
execute as @e[type=item,tag=!mbGemitemInvul] if data entity @s Item.components.minecraft:custom_data.mbGem run data merge entity @s {Invulnerable:1b,Age:0,Tags:["mbGemitemInvul"]}

#Allay
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:allay_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/allay/pickup_item/0_trigger

#Armadillo
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:armadillo_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/armadillo/shield/0
    execute as @a[scores={mbGemArmadilloShield=1..}] at @s run function mob_gem:mob_gem/armadillo/shield/1

#Bat
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:bat_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/bat/echolocation/0_trigger

#Bee
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:bee_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/bee/swarm/0_trigger
    execute as @a[tag=mbGemBeeSpawning] at @s run function mob_gem:mob_gem/bee/swarm/2_bee_spawning
    execute as @e[type=bee,name=GemBeeSpawn] run function mob_gem:mob_gem/bee/swarm/4_bee_dur

#Bogged
    #Perk
    execute as @a[predicate=mob_gem:bogged_gem/has_item,scores={mbGemShootBow=1..3}] at @s run function mob_gem:mob_gem/bogged/poison_arrow/0
    execute as @a[predicate=mob_gem:bogged_gem/has_item,scores={mbGemCrossbow=1..3}] at @s run function mob_gem:mob_gem/bogged/poison_arrow/0

#Breeze
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:breeze_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. if predicate mob_gem:on_ground at @s run function mob_gem:mob_gem/breeze/launch/0
    
#Camel
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:camel_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/camel/grow/0_trigger

#Cat
    #Ability
    execute as @a[predicate=mob_gem:cat_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/cat/scare/0_trigger
    execute as @e[type=!#mob_gem:nalive,scores={mbGemScareTimer=1..}] at @s run function mob_gem:mob_gem/cat/scare/3_dur

#Cave Spider
    #Ability
    execute as @a[predicate=mob_gem:cave_spider_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/cave_spider/web_bomb/0_aim
    execute as @e[type=falling_block,name="webBombBlock"] at @s unless block ~ ~-0.5 ~ #mob_gem:passable run function mob_gem:mob_gem/cave_spider/web_bomb/2_lay
    execute as @e[type=area_effect_cloud,name="mbWebBombPrimer"] run function mob_gem:mob_gem/cave_spider/web_bomb/3_incubate

#Chicken
    #Ability
    execute as @a[predicate=mob_gem:chicken_gem/holding_item,scores={mbGem_Click=1..3,mbGemChickenFlaps=1..}] positioned as @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/chicken/flap/0_trigger
    execute as @a[tag=mbGemChickenFlap,predicate=mob_gem:chicken_gem/flap_lift] run function mob_gem:mob_gem/chicken/flap/1_clear_lift
    execute as @a[predicate=mob_gem:chicken_gem/has_item,predicate=mob_gem:on_ground] run scoreboard players set @s mbGemChickenFlaps 5 
    #Perk
    execute as @a[predicate=mob_gem:chicken_gem/holding_item] run function mob_gem:mob_gem/chicken/slowfall/apply
    execute as @a[predicate=!mob_gem:chicken_gem/holding_item] run function mob_gem:mob_gem/chicken/slowfall/remove
    

#Creeper
    #Ability
    execute as @a[predicate=mob_gem:creeper_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/creeper/0_trigger
    execute as @a[scores={mbGemExplosionTime=1..}] run function mob_gem:mob_gem/creeper/1_dur

#Dolphin
    #Ability
    execute as @a[predicate=mob_gem:dolphin_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. anchored eyes as @e[distance=..6,type=!#mob_gem:nalive,predicate=!mob_gem:dolphin_gem/holding_item] facing entity @s eyes anchored feet positioned ^ ^ ^1 rotated as @p[predicate=mob_gem:dolphin_gem/holding_item] positioned ^ ^ ^-1 if entity @p[distance=..0.35,predicate=mob_gem:dolphin_gem/holding_item] positioned ^ ^ ^1 run function mob_gem:mob_gem/dolphin/bestow_grace

#Donkey
    #Ability
    execute as @a[predicate=mob_gem:donkey_gem/holding_item,predicate=mob_gem:sneak] positioned as @s unless entity @n[type=marker,name="mbGemPersonalStorage",distance=..1.5] run function mob_gem:mob_gem/donkey/personal_storage/0_spawn
    execute as @e[type=marker,name="mbGemPersonalStorage"] positioned as @s run function mob_gem:mob_gem/donkey/personal_storage/1_despawn
#Drowned
    #Ability 
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:drowned_gem/holding_item] unless dimension minecraft:the_nether unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/drowned/riptide/0
    execute as @a[scores={mbGemRiptide=1..}] run function mob_gem:mob_gem/drowned/riptide/2_back
    execute as @a[scores={mbGemTrident=1..}] run function mob_gem:mob_gem/drowned/riptide/6_launch

#Elder Guardian
    #Ability
    execute as @a[predicate=mob_gem:elder_guardian_gem/holding_item,scores={mbGem_Click=1..3},predicate=!mob_gem:sneak] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/elder_guardian/laser/0_trigger
    execute as @e[type=!#mob_gem:nalive,scores={mbGemEGuardianTimer=1..}] run function mob_gem:mob_gem/elder_guardian/laser/4_dur
    execute as @a[predicate=mob_gem:elder_guardian_gem/holding_item] if predicate mob_gem:elder_guardian_gem/laser_target at @s run function mob_gem:mob_gem/elder_guardian/laser/6_target
    #Perk
    execute as @a[predicate=mob_gem:elder_guardian_gem/holding_item,scores={mbGem_Click=1..3},predicate=mob_gem:sneak,tag=!mbEGuardianFatigue] run function mob_gem:mob_gem/elder_guardian/mining_fatigue/apply
    execute as @a[predicate=mob_gem:elder_guardian_gem/holding_item,scores={mbGem_Click=1..3},predicate=mob_gem:sneak,tag=mbEGuardianFatigue] run function mob_gem:mob_gem/elder_guardian/mining_fatigue/remove

#Enderman
    #Perk
    execute as @a[predicate=mob_gem:enderman_gem/has_item] at @s run function mob_gem:mob_gem/enderman/aggro/0_scan
    #Ability
    execute as @a[predicate=mob_gem:enderman_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. anchored eyes positioned ^ ^ ^0.1 run function mob_gem:mob_gem/enderman/teleport/0

#Evoker
    #Ability
    execute as @a[predicate=mob_gem:evoker_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/evoker/fangs/0

#Frog
    #Ability
    execute as @a[predicate=mob_gem:frog_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/frog/tongue/0
    execute as @e[type=!#mob_gem:nalive,tag=mbGemFrogTarget] at @s run function mob_gem:mob_gem/frog/tongue/3_dur
    execute as @e[type=!#mob_gem:nalive,tag=mbGemTurnedFrog] at @s run function mob_gem:mob_gem/frog/tongue/5_frog_dur
    #Perk
    execute as @a[predicate=mob_gem:frog_gem/has_item,tag=!mbGemFrogJumpBoost] if predicate mob_gem:sneak run function mob_gem:mob_gem/frog/sneakjump/apply
    execute as @a[predicate=!mob_gem:frog_gem/has_item,tag=mbGemFrogJumpBoost] run function mob_gem:mob_gem/frog/sneakjump/remove
    execute as @a[predicate=mob_gem:frog_gem/has_item,tag=mbGemFrogJumpBoost] unless predicate mob_gem:sneak run function mob_gem:mob_gem/frog/sneakjump/remove
    execute as @a[predicate=mob_gem:frog_gem/has_item,predicate=mob_gem:sneak,scores={mbGemjumpCount=1..}] run function mob_gem:mob_gem/frog/sneakjump/jump/0
    execute as @a[tag=mbGemFrogPad,predicate=mob_gem:on_ground] run function mob_gem:mob_gem/frog/sneakjump/jump/1

#Fox
    #Ability
    execute as @a[predicate=mob_gem:fox_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/fox/pounce/0
    execute as @a[scores={mbGem_foxPounce=1..}] at @s run function mob_gem:mob_gem/fox/pounce/4_dur

#Glow Squid
    #Ability
    execute as @a[predicate=mob_gem:glow_squid_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/glow_squid/blind/0_trigger
    execute as @e[type=!#mob_gem:nalive,scores={mbGemGSqdBlind=1..}] run function mob_gem:mob_gem/glow_squid/blind/2_dur
    #Perk
    execute as @a[predicate=mob_gem:glow_squid_gem/has_item] positioned as @s run function mob_gem:mob_gem/glow_squid/light/0
    execute as @a[predicate=!mob_gem:glow_squid_gem/has_item,tag=mbGemGlowLight] positioned as @s run function mob_gem:mob_gem/glow_squid/light/clear

#Goat
    #Ability
    execute as @a[predicate=mob_gem:goat_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. anchored eyes positioned ^ ^ ^0.1 run function mob_gem:mob_gem/goat/ram/0_trigger
    execute as @a[scores={mbGemGoatRam=1..}] at @s run function mob_gem:mob_gem/goat/ram/4_dur

#Guardian
    #Ability
    execute as @a[predicate=mob_gem:guardian_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/guardian/laser/0_trigger
    execute as @e[type=!#mob_gem:nalive,scores={mbGemGuardianTimer=1..}] run function mob_gem:mob_gem/guardian/laser/4_dur
    execute as @a[predicate=mob_gem:guardian_gem/holding_item] if predicate mob_gem:guardian_gem/laser_target at @s run function mob_gem:mob_gem/guardian/laser/6_target
    

#Horse
    #Ability
    execute as @a[predicate=mob_gem:horse_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. positioned ^ ^ ^0.1 run function mob_gem:mob_gem/horse/ride/0
    execute as @a[scores={mbGem_nonHorseRide=1..}] positioned as @s run function mob_gem:mob_gem/horse/ride/3_dur

#Husk
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:husk_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/husk/break/0

#Iron Golem
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:iron_golem_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/iron_golem/uppercut/0_trigger
    execute as @e[type=!#mob_gem:nalive,predicate=mob_gem:iron_golem_gem/uppercut_effect] run function mob_gem:mob_gem/iron_golem/uppercut/2_drop

#Llama
    #Ability
    execute as @a[predicate=mob_gem:llama_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/llama/spit/0_trigger
    execute as @e[type=llama_spit,name=mbGemSpit] at @s run function mob_gem:mob_gem/llama/spit/damage

#MooshRoom
    #Ability
    execute as @a[predicate=mob_gem:mooshroom_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/mooshroom/super_stew/0_trigger
    #Perk
    execute as @a[predicate=mob_gem:mooshroom_gem/has_item,predicate=mob_gem:mooshroom_gem/holding_sus_stew,predicate=!mob_gem:mooshroom_gem/holding_super_stew] run function mob_gem:mob_gem/mooshroom/reveal/0
    
#Parrot
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:parrot_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/parrot/0
    execute as @a[scores={mbGemDJumptimer=1..}] at @s run function mob_gem:mob_gem/parrot/1
    effect clear @a[predicate=mob_gem:parrot_gem/should_clear_effect] slow_falling

#Phantom
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:phantom_gem/holding_item,predicate=!mob_gem:on_ground] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/phantom/glide/0_trigger
    execute as @a[tag=mbGemPhantomGlide] at @s run function mob_gem:mob_gem/phantom/glide/1_dur

#Pig
    #Ability
    execute as @a[predicate=mob_gem:pig_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/pig/carrot_buff/0_trigger

#Piglin Brute
    #Ability
    execute as @a[predicate=mob_gem:piglin_brute_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/0_trigger
    execute as @e[type=armor_stand,name="mbGemTomohawkI"] run function mob_gem:mob_gem/piglin_brute/tomohawk_throw/3_dur

#Pillager
    #Perk
    execute as @a[predicate=mob_gem:pillager_gem/has_item,scores={mbGemCrossbow=1..3},predicate=!mob_gem:sneak] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/pillager/aimbot/0

#Polar Bear
    #Ability
    execute as @a[predicate=mob_gem:polar_bear_gem/holding_item,scores={mbGem_Click=1..3}] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/polar_bear/frost_enchant/0_trigger

#Pufferfish
    #Ability
    execute as @a[predicate=mob_gem:pufferfish_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/pufferfish/poison_spike/0_trigger

#Rabbit
    #Ability
    execute as @a[predicate=mob_gem:rabbit_gem/holding_item,scores={mbGem_Click=1..3},predicate=mob_gem:on_ground] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/rabbit/leap/0_trigger
    execute as @a[scores={mbGemLeap=1..}] run function mob_gem:mob_gem/rabbit/leap/1_dur with storage mob_gem:auxillary rabbit

#Ravager
    #Ability
    execute as @a[predicate=mob_gem:ravager_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/ravager/roar/0_trigger
    execute as @a[scores={mbGemRavagerRoar=1..}] run function mob_gem:mob_gem/ravager/roar/1_dur
    execute as @e[type=!#mob_gem:nalive,scores={mbGemRavagerRoared=1..}] positioned as @s run function mob_gem:mob_gem/ravager/roar/3_dur
    #Perk
    execute as @a[predicate=mob_gem:ravager_gem/has_item,predicate=mob_gem:sprint] run function mob_gem:mob_gem/ravager/sprint/0
    execute as @a[predicate=mob_gem:ravager_gem/has_item,predicate=!mob_gem:sprint] if score @s mbGemRavageSprintDur matches 1.. run function mob_gem:mob_gem/ravager/sprint/3_stop_sprint

#Silverfish
    #Ability
    execute as @a[predicate=mob_gem:silverfish_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/silverfish/shrink/0_trigger
    execute as @a[scores={mbGemShrinkSilver=1..}] at @s run function mob_gem:mob_gem/silverfish/shrink/1_dur

#Spider
    #Ability
    execute as @a[predicate=mob_gem:spider_gem/holding_item] at @s run function mob_gem:mob_gem/spider/wall_climb/0
    #Perk
    execute as @a[predicate=mob_gem:spider_gem/has_item,predicate=mob_gem:spider_gem/slowed_by_web] at @s run function mob_gem:mob_gem/spider/cobweb_immunity/0

#Sheep
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:sheep_gem/holding_item,predicate=!mob_gem:sheep_gem/sleeping,predicate=mob_gem:sheep_gem/night_time] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/sheep/sleep_anywhere/0
    execute as @a[predicate=mob_gem:sheep_gem/sleeping] run function mob_gem:mob_gem/sheep/sleep_anywhere/1

#Shulker
    #Ability
    execute as @a[predicate=mob_gem:shulker_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/shulker/0

#Skeleton Horse
    #Ability
    execute as @a[predicate=mob_gem:skeleton_horse_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/skeleton_horse/pacify/0
    execute as @e[type=skeleton,scores={mbGemSkelePacify=1..}] run function mob_gem:mob_gem/skeleton_horse/pacify/2_dur

#Slime
    #Ability
    execute as @a[predicate=mob_gem:slime_gem/holding_item,scores={mbGem_Click=1..3},predicate=mob_gem:on_ground] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/slime/stomp/0_trigger
    effect clear @a[predicate=mob_gem:slime_gem/has_item,predicate=mob_gem:slime_gem/stomp_levitation,tag=mbGemSlimeStomp] levitation
    execute as @a[tag=mbGemSlimeStomp] run function mob_gem:mob_gem/slime/stomp/1_dur

    #Perk
    execute as @a[predicate=mob_gem:slime_gem/has_item,predicate=!mob_gem:on_ground] positioned as @s unless block ~ ~-1 ~ #mob_gem:passable run function mob_gem:mob_gem/slime/bounce_back/0
    execute as @a[predicate=mob_gem:slime_gem/has_item,predicate=!mob_gem:on_ground] positioned as @s unless block ~ ~-2 ~ #mob_gem:passable run function mob_gem:mob_gem/slime/bounce_back/0
    effect clear @a[predicate=mob_gem:slime_gem/has_item,predicate=mob_gem:slime_gem/bounce_levitation] levitation

#Sniffer
    #Ability
    execute as @a[predicate=mob_gem:sniffer_gem/holding_item,scores={mbGem_Click=1..3}] at @s unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/sniffer/burrow/0_trigger
    execute as @a[scores={mbGem_snifferBurrow=1..}] at @s run function mob_gem:mob_gem/sniffer/burrow/1_dur

#Snow Golem
    #Ability
    execute as @a[predicate=mob_gem:snow_golem_gem/holding_item,scores={mbGem_Click=1..3}] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/snow_golem/snowball/0_trigger
    execute as @a[scores={mbGem_snowballThrow=1..}] at @s run function mob_gem:mob_gem/snow_golem/snowball/1_dur
    execute as @e[type=snowball,name="snowGolemBall"] at @s run function mob_gem:mob_gem/snow_golem/snowball/dmg
    #Perk
    execute as @a[predicate=mob_gem:snow_golem_gem/holding_item] if predicate mob_gem:on_ground positioned as @s run fill ~ ~ ~ ~ ~ ~ snow replace #mob_gem:passable

#Stray
    #Perk
    execute as @a[predicate=mob_gem:stray_gem/has_item,scores={mbGemShootBow=1..3}] at @s run function mob_gem:mob_gem/stray/slow_arrow/0
    execute as @a[predicate=mob_gem:stray_gem/has_item,scores={mbGemCrossbow=1..3}] at @s run function mob_gem:mob_gem/stray/slow_arrow/0

#Strider
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:strider_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/strider/lava_spawn/0_trigger
    execute as @e[type=area_effect_cloud,name="mbGem_LavaCluster"] at @s run function mob_gem:mob_gem/strider/lava_spawn/3_lava_cluster

    #Perk
        #Walk on Lava
        execute as @a[tag=!mbGemStriderLava,predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/lava_walk/on_lava
        execute as @a[tag=mbGemStriderLava,predicate=mob_gem:strider_gem/has_item] at @s unless block ~ ~-0.5 ~ lava run function mob_gem:mob_gem/strider/lava_walk/off_lava
        execute as @a[predicate=!mob_gem:strider_gem/has_item,tag=mbGemStriderLava] run function mob_gem:mob_gem/strider/lava_walk/off_lava

        #Sink in Lava
        execute as @a[predicate=mob_gem:strider_gem/has_item,predicate=mob_gem:sneak,gamemode=!spectator] at @s if block ~ ~-0.5 ~ lava run tp @s ~ ~-0.1 ~
        execute as @a[predicate=mob_gem:strider_gem/has_item,gamemode=!spectator] at @s if block ~ ~ ~ lava run effect give @s fire_resistance 1 0 true

#Squid
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:squid_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/squid/inkjet/0_trigger

#Turtle
    #Ability
    execute as @a[predicate=mob_gem:turtle_gem/holding_item,scores={mbGem_Click=1..3}] unless score @s mbGem_AbilityCooldown matches 1.. run function mob_gem:mob_gem/turtle/breath/0_trigger

#Villager
    #Ability
    execute as @a[predicate=mob_gem:villager_gem/holding_item,scores={mbGem_Click=1..3}] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/villager/spawn_golem/0_trigger
    execute as @e[type=iron_golem,tag=playerGolemSpawn] run function mob_gem:mob_gem/villager/spawn_golem/2_dur

#Vindicator
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:vindicator_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/vindicator/tomohawk_throw/0_trigger
    execute as @e[type=armor_stand,name="mbGemTomohawkII"] at @s run function mob_gem:mob_gem/vindicator/tomohawk_throw/2_dur

#Vex
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:vex_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/vex/rage/0_trigger


#Wandering Trader
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:wandering_trader_gem/holding_item] unless score @s mbGemWanderInvis matches 1.. at @s run function mob_gem:mob_gem/wandering_trader/invisibility/0_trigger
    execute as @a[scores={mbGemWanderInvis=1..}] run function mob_gem:mob_gem/wandering_trader/invisibility/1_dur

#Warden
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:warden_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/warden/sonic_boom/0_activate
    execute as @a[scores={mbGemSonicBoom=1..}] at @s run function mob_gem:mob_gem/warden/sonic_boom/1_dur

#Witch
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:witch_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/witch/throw_potion/0_trigger

#Wither
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:wither_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/wither/skull/0_trigger
    execute as @e[type=wither_skull,tag=mbGemSkull] run function mob_gem:mob_gem/wither/skull/3_dur

#Wolf
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:wolf_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s unless predicate mob_gem:sneak run function mob_gem:mob_gem/wolf/companionship/0_trigger
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:wolf_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s if predicate mob_gem:sneak run function mob_gem:mob_gem/wolf/companionship/12_uncouple
    #Perk
    execute as @a[predicate=mob_gem:wolf_gem/has_item] positioned as @s run function mob_gem:mob_gem/wolf/invis_detect/0

#Zombie
    #Ability
    execute as @a[scores={mbGem_Click=1..3},predicate=mob_gem:zombie_gem/holding_item] unless score @s mbGem_AbilityCooldown matches 1.. at @s run function mob_gem:mob_gem/zombie/break/0

scoreboard players reset @a mbGem_Click
scoreboard players reset @a mbGemTrident
scoreboard players reset @a mbGemCrossbow
scoreboard players reset @a mbGemjumpCount
scoreboard players reset @a mbGemShootBow