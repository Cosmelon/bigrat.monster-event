# Description: Start function for tomb
# Author: Cosmelon
# Type: Start
# run from: <manual>

# conditions set
scoreboard players set .lobby currentGame 0
scoreboard players set .tomb currentGame 1
time set midnight
clear @a
effect clear @a
gamerule sendCommandFeedback false
gamemode adventure
gamerule sendCommandFeedback true

# global scoreboards for tomb
scoreboard objectives add tbCore dummy
scoreboard players set +gameActive tbCore 1
scoreboard players set +countDown tbCore 161

scoreboard objectives add tbConst dummy
scoreboard players set #milliConst tbConst 50
scoreboard players set #secConst tbConst 20
scoreboard players set #minConst tbConst 1200

# tag remove
tag @a remove kitConfirm
tag @a remove tankKit
tag @a remove medicKit
tag @a remove hunterKit
tag @a remove gladiatorKit

#roundActive scores
scoreboard players set +rKActive tbCore 0
scoreboard players set +r1Active tbCore 0
scoreboard players set +r2Active tbCore 0
scoreboard players set +r3Active tbCore 0

# round1 scoreboads
scoreboard objectives add tbR1 dummy

# round2 scoreboards
scoreboard objectives add tbR2 dummy

# round3 scoreboards
scoreboard objectives add tbR3 dummy

# teleport players to pre-game area
tp @a 5006.48 4.00 -63.59 1488.84 2.63