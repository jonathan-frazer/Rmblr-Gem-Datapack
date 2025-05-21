say Mob Gem Datapack Loaded!

scoreboard objectives add mbGem_fakePlayer dummy
scoreboard objectives add mbGem_Click used:warped_fungus_on_a_stick
scoreboard objectives add mbGem_AbilityCooldown dummy
scoreboard objectives add mbGem_CleanUp dummy

#Allay
scoreboard players set mbGemStealOffset mbGem_fakePlayer 8
data modify storage mob_gem:allay StolenItems.MobItem set value {}

#Armadillo
scoreboard objectives add mbGemArmadilloShield dummy

#Camel
scoreboard objectives add mbGem_camelGrow dummy

#Cat
scoreboard objectives add mbGemScareTimer dummy

#Chicken
scoreboard objectives add mbGemChickenFlaps dummy

#Creeper
scoreboard objectives add mbGemExplosionTime dummy

#Drowned
scoreboard objectives add mbGemRiptide dummy
scoreboard objectives add mbGemTrident used:trident

#Fox
scoreboard objectives add mbGem_foxPounce dummy

#Horse
scoreboard objectives add mbGem_nonHorseRide dummy

#Parrot
scoreboard objectives add mbGemDJumptimer dummy

#Pig
scoreboard objectives add mbGemBurrow dummy

#Pillager
scoreboard objectives add mbGemCrossbow used:crossbow

#Rabbit
scoreboard objectives add mbGemLeap dummy

#Sheep
scoreboard objectives add mbGemSleepTick dummy
scoreboard objectives add mbGemSleepSec dummy

#Warden
scoreboard objectives add mbGemSonicBoom dummy
scoreboard objectives add mbGemWardHeart dummy

#Piglin Brute
scoreboard objectives add mbGemAxePhase dummy

#Cave Spider
scoreboard objectives add ThrowX dummy
scoreboard objectives add ThrowY dummy
scoreboard objectives add ThrowZ dummy
scoreboard objectives add OriginX dummy
scoreboard objectives add OriginY dummy
scoreboard objectives add OriginZ dummy
scoreboard players set One ThrowY 1

team add Intangible
team modify Intangible collisionRule never

schedule function mob_gem:mainhalfsec 10t
schedule function mob_gem:mainsec 20t