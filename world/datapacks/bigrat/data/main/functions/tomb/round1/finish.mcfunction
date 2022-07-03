# Description: round1 ends
# Author: Cosmelon
# Type: end
# run from main:tomb/round1/main when +timeLeft tombR1 == -1

# variables
scoreboard players set +r1Active tombCore 0
schedule function main:tomb/round2/start 20s
tellraw @a "next round starting in 20s"

# get rid of zombies
kill @e[type=zombie]
setblock 5016 34 2 air destroy
setblock 5016 34 45 air destroy
setblock 5016 34 89 air destroy
setblock 5016 34 131 air destroy

# leaderboard
tellraw @a "scores:"
#todo: do leaderboard
tellraw @a ""

# sound
function main:sfx/gameend

# title
title @a title "Finish!"