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
tellraw @a "Top Scoring Players:"
#todo: do leaderboard
tellraw @a [{"translate":"space.3"},{"text":"1. "}]
tellraw @a ""

# sound
function main:sfx/gameend

# title
title @a title "Finish!"

# clear placement tags
tag @a remove tb_p1
tag @a remove tb_p2
tag @a remove tb_p3
tag @a remove tb_p4