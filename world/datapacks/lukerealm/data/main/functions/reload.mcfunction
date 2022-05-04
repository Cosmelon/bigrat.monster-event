# load

#sgRng
scoreboard objectives add sg dummy
scoreboard objectives add sgBorder dummy
scoreboard objectives add sgDeaths deathCount
scoreboard objectives add sgPlayers dummy
scoreboard objectives add sgMath dummy
scoreboard objectives add sgConstant dummy
scoreboard players set #2 sgConstant 2
scoreboard players set #1000 sgConstant 1000
scoreboard players set #10000 sgConstant 10000
scoreboard players set #lcg sgConstant 1103515245


# scoreboard remake
scoreboard objectives add spleef dummy
scoreboard objectives add spleefDeaths deathCount
scoreboard objectives add spleef_sb dummy
scoreboard objectives add spleefSnowBall minecraft.mined:minecraft.snow_block
scoreboard objectives add spleefQuit minecraft.custom:minecraft.leave_game
scoreboard objectives add spleefBorder dummy
scoreboard objectives add sg dummy
scoreboard objectives add sgBorder dummy
scoreboard objectives add race dummy
scoreboard objectives add raceMilli dummy
scoreboard objectives add raceSec dummy
scoreboard objectives add raceMin dummy

scoreboard objectives add currentGame dummy
scoreboard objectives add yCos dummy

# gamerules
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule spectatorsGenerateChunks true
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
team modify Red friendlyFire false

team add Blue {"text":"Blue","color":"blue"}
team modify Blue collisionRule never
team modify Blue color blue
team modify Blue prefix {"text":"[Blue] ","color":"blue"}
team modify Blue friendlyFire false

team add Green {"text":"Green","color":"green"}
team modify Green collisionRule never
team modify Green color green
team modify Green prefix {"text":"[Green] ","color":"green"}
team modify Green friendlyFire false

team add Yellow {"text":"Yellow","color":"yellow"}
team modify Yellow collisionRule never
team modify Yellow color yellow
team modify Yellow prefix {"text":"[Yellow] ","color":"yellow"}
team modify Yellow friendlyFire false

team add Admin {"text":"Admin","color":"dark_red"}
team modify Admin collisionRule never
team modify Admin color dark_red
team modify Admin prefix {"text":"[Admin] ","color":"dark_red"}
team modify Admin friendlyFire false

team add Spectator {"text":"Spectator","color":"gray"}
team modify Spectator collisionRule never
team modify Spectator color gray
team modify Spectator prefix {"text":"[Spectator] ","color":"gray"}
team modify Spectator friendlyFire false