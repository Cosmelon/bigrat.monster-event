# making sure the parkour scoreboard is added
scoreboard objectives add parkour dummy
scoreboard players set $gameActive parkour 0
scoreboard players set $countDown parkour 0

scoreboard objectives add pkstart trigger
scoreboard objectives add pkend trigger

# scoreboard remake
scoreboard objectives add spleef dummy
scoreboard objectives add spleefDeaths deathCount
scoreboard objectives add spleef_sb dummy
scoreboard objectives add spleefSnowBall minecraft.mined:minecraft.snow_block
scoreboard objectives add currentGame dummy

# gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule spectatorsGenerateChunks true
gamerule doImmediateRespawn true
gamerule doFireTick true
gamerule doMobSpawning false
gamerule doTraderSpawning false
gamerule logAdminCommands true
gamerule keepInventory false

# re-add teams
team add Red {"text":"Red","color":"red"}
team modify Red collisionRule never
team modify Red color red
team modify Red prefix {"text":"[Red] ","color":"red"}

team add Blue {"text":"Blue","color":"blue"}
team modify Blue collisionRule never
team modify Blue color blue
team modify Blue prefix {"text":"[Blue] ","color":"blue"}

team add Green {"text":"Green","color":"green"}
team modify Green collisionRule never
team modify Green color green
team modify Green prefix {"text":"[Green] ","color":"green"}

team add Yellow {"text":"Yellow","color":"yellow"}
team modify Yellow collisionRule never
team modify Yellow color yellow
team modify Yellow prefix {"text":"[Yellow] ","color":"yellow"}

team add Admin {"text":"Admin","color":"dark_red"}
team modify Admin collisionRule never
team modify Admin color dark_red
team modify Admin prefix {"text":"[Admin] ","color":"dark_red"}

team add Spectator {"text":"Spectator","color":"gray"}
team modify Spectator collisionRule never
team modify Spectator color gray
team modify Spectator prefix {"text":"[Spectator] ","color":"gray"}