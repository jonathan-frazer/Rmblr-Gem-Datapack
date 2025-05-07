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

#Creeper
scoreboard objectives add mbGemExplosionTime dummy

#Parrot
scoreboard objectives add mbGemDJumptimer dummy

#Sheep
scoreboard objectives add mbGemSleepTick dummy
scoreboard objectives add mbGemSleepSec dummy

#Drowned
scoreboard objectives add mbGemRiptide dummy
scoreboard objectives add mbGemTrident used:trident

#Warden
scoreboard objectives add mbGemSonicBoom dummy
scoreboard objectives add mbGemWardHeart dummy

team add Intangible
team modify Intangible collisionRule never

schedule function mob_gem:mainhalfsec 10t
schedule function mob_gem:mainsec 20t