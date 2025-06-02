say Mob Gem Datapack Loaded!
##CHANGE THIS WHEN FINISHED
data remove storage mob_gem:gem_acquire GemsCurrentlySpawned
scoreboard objectives add mbGem_fakePlayer dummy
scoreboard objectives add mbGem_Click used:warped_fungus_on_a_stick
scoreboard objectives add mbGem_AbilityCooldown dummy
scoreboard objectives add mbGem_CleanUp dummy
scoreboard objectives add previousGameType dummy
scoreboard objectives add mbGemjumpCount minecraft.custom:jump

#Allay
scoreboard players set mbGemStealOffset mbGem_fakePlayer 8
data modify storage mob_gem:auxillary Allay.StolenItems.MobItem set value {}

#Armadillo
scoreboard objectives add mbGemArmadilloShield dummy

#Camel
scoreboard objectives add mbGem_camelGrow dummy

#Cat
scoreboard objectives add mbGemScareTimer dummy

#Cave Spider
scoreboard objectives add ThrowX dummy
scoreboard objectives add ThrowY dummy
scoreboard objectives add ThrowZ dummy
scoreboard objectives add OriginX dummy
scoreboard objectives add OriginY dummy
scoreboard objectives add OriginZ dummy
scoreboard players set One ThrowY 1

#Chicken
scoreboard objectives add mbGemChickenFlaps dummy

#Creeper
scoreboard objectives add mbGemExplosionTime dummy

#Drowned
scoreboard objectives add mbGemRiptide dummy
scoreboard objectives add mbGemTrident used:trident

#Elder Guardian
scoreboard objectives add mbGemEGuardianLaser dummy
scoreboard objectives add mbGemEGuardianTimer dummy

#Fox
scoreboard objectives add mbGem_foxPounce dummy

#Frog
scoreboard objectives add mbGemFrogpull dummy

#Glow Squid
scoreboard objectives add mbGemGSqdBlind dummy

#Guardian
scoreboard objectives add mbGemGuardianLaser dummy
scoreboard objectives add mbGemGuardianTimer dummy

#Horse
scoreboard objectives add mbGem_nonHorseRide dummy

#Parrot
scoreboard objectives add mbGemDJumptimer dummy

#Piglin Brute
scoreboard objectives add mbGemAxePhase dummy

#Pillager
scoreboard objectives add mbGemCrossbow used:crossbow

#Rabbit
scoreboard objectives add mbGemLeap dummy

#Ravager
scoreboard objectives add mbGemRavagerRoar dummy
scoreboard objectives add mbGemRavagerRoared dummy
scoreboard objectives add mbGemRavageSprintCyc dummy
scoreboard players set ten mbGem_fakePlayer 10
scoreboard objectives add mbGemRavageSprintDur dummy

#Sheep
scoreboard objectives add mbGemSleepTick dummy
scoreboard objectives add mbGemSleepSec dummy

#Skeleton-Type
scoreboard objectives add mbGemShootBow used:bow

#Skeleton Horse
scoreboard objectives add mbGemSkelePacify dummy

#Sniffer
scoreboard objectives add mbGem_snifferBurrow dummy

#Snow Golem
scoreboard objectives add mbGem_snowballThrow dummy

#Warden
scoreboard objectives add mbGemSonicBoom dummy
scoreboard objectives add mbGemWardHeart dummy

#Wandering Trader
scoreboard objectives add mbGemWanderInvis dummy



team add Intangible
team modify Intangible collisionRule never

schedule function mob_gem:mainhalfsec 10t
schedule function mob_gem:mainsec 20t