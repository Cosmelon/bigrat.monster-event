# load

# scoreboard remake
scoreboard objectives add br_cgame dummy
scoreboard objectives add br_tcheck dummy
scoreboard objectives add br_online minecraft.custom:leave_game
scoreboard objectives add indivScore dummy
scoreboard objectives add teamScores dummy

# position remake
scoreboard objectives add br_xPos dummy
scoreboard objectives add br_yPos dummy
scoreboard objectives add br_zPos dummy

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
team modify Red friendlyFire false

team add Blue {"text":"Blue","color":"blue"}
team modify Blue collisionRule never
team modify Blue color blue
team modify Blue friendlyFire false

team add Green {"text":"Green","color":"green"}
team modify Green collisionRule never
team modify Green color green
team modify Green friendlyFire false

team add Yellow {"text":"Yellow","color":"yellow"}
team modify Yellow collisionRule never
team modify Yellow color yellow
team modify Yellow friendlyFire false

team add Admin {"text":"Admin","color":"dark_red"}
team modify Admin collisionRule never
team modify Admin color dark_red
team modify Admin prefix {"text":"[Admin] ","color":"dark_red"}
team modify Admin friendlyFire false

team add Spectator {"text":"Spectator","color":"gray"}
team modify Spectator collisionRule never
team modify Spectator color gray
team modify Spectator friendlyFire false

# return to lobby option
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"bigrat","color":"gold"},{"text":"]","color":"dark_gray"},{"text":" » ","color":"gray"},{"text":"Main pack loaded!","color":"white"}]
tellraw @a[tag=admin] [{"text":"[Reload again]","color":"gold","clickEvent":{"action":"run_command","value":"/reload confirm"}},{"text":"    [Return to lobby]","color":"aqua","clickEvent":{"action":"run_command","value":"/function main:returnlobby"}}]
