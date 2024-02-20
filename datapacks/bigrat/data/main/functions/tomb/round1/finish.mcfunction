# Description: round1 ends
# Author: Cosmelon
# Type: end
# run from main:tomb/round1/main when +timeLeft tbR1 == -1

# calculate team leaderboard


# variables
scoreboard players set +r1Active tbCore 0
schedule function main:tomb/round2/start 15s
scoreboard objectives remove tbR1_Deaths
bossbar remove tomb:r1timer

# get rid of zombies
kill @e[type=zombie]
setblock 5016 34 2 air destroy
setblock 5016 34 55 air destroy
setblock 5016 34 109 air destroy
setblock 5016 34 161 air destroy 

# sound
function main:sfx/gameend

# title
title @a title {"text":"Finish!","color":"red","bold":true}
