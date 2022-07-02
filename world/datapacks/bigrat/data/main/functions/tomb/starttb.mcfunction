# Description: Start function for tomb
# Author: Cosmelon
# Type: Start
# run from: <manual>

# global scoreboards for tomb
scoreboard objectives add tombCore dummy
scoreboard players set +gameActive tombCore 1
scoreboard players set +countDown tombCore 161

scoreboard objectives add tombConst dummy
scoreboard players set #milliConst tombConst 50
scoreboard players set #secConst tombConst 20
scoreboard players set #minConst tombConst 1200

scoreboard objectives add tombKills minecraft.custom:minecraft.mob_kills

# tag remove
tag @a remove kitConfirm
tag @a remove tankKit
tag @a remove medicKit
tag @a remove hunterKit
tag @a remove gladiatorKit

#roundActive scores
scoreboard players set +rKActive tombCore 0
scoreboard players set +r1Active tombCore 0
scoreboard players set +r2Active tombCore 0
scoreboard players set +r3Active tombCore 0



# round2 scoreboards
scoreboard objectives add tombR2 dummy

# round3 scoreboards
scoreboard objectives add tombR3 dummy

# teleport players to pre-game area
tp @a 5006.48 4.00 -63.59 1488.84 2.63