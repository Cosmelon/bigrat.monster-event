# load

# scoreboard remake
scoreboard objectives add currentGame dummy
scoreboard objectives add yCos dummy
scoreboard objectives add teamCheck dummy
scoreboard objectives add playersOnline minecraft.custom:leave_game
scoreboard objectives add indivScore dummy
scoreboard objectives add teamScores dummy

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

# return to lobby option
tellraw @a {"text":"Main BR Pack Loaded!","color":"gold"}
tellraw @a[tag=admin] {"text":"[Return to Lobby]","color":"gold","clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}