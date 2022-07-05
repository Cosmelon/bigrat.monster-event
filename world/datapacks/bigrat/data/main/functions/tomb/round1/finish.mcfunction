# Description: round1 ends
# Author: Cosmelon
# Type: end
# run from main:tomb/round1/main when +timeLeft tbR1 == -1

# calculate team leaderboard


# variables
scoreboard players set +r1Active tbCore 0
schedule function main:tomb/round2/start 20s
tellraw @a "next round starting in 20s"
scoreboard objectives remove tbR1_Deaths

# get rid of zombies
kill @e[type=zombie]
setblock 5016 34 2 air destroy
setblock 5016 34 45 air destroy
setblock 5016 34 89 air destroy
setblock 5016 34 131 air destroy

# leaderboard
tellraw @a "Top Scoring teams:"
#todo: do leaderboard
tellraw @a [{"translate":"space.3"},{"text":"1. "}]
tellraw @a ""
tellraw @a [{"text":"1. "},{"selector":"@e[tag=tb_kp1]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp1,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"2. "},{"selector":"@e[tag=tb_kp2]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp2,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"3. "},{"selector":"@e[tag=tb_kp3]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp3,limit=1]","objective":"tbR1_tKills"}}]
tellraw @a [{"text":"4. "},{"selector":"@e[tag=tb_kp4]"},{"text":" - "},{"score":{"name":"@e[tag=tb_kp4,limit=1]","objective":"tbR1_tKills"}}]

# sound
function main:sfx/gameend

# title
title @a title "Finish!"

# clear placement tags
tag @a remove tb_kp1
tag @a remove tb_kp2
tag @a remove tb_kp3
tag @a remove tb_kp4